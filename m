Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4CCBB3E0ABA
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 01:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628118570;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MRNQdjU0Jwi/anqm5hmunO3cCVKRH1vN6zWDUWZyR4M=;
	b=jEmwsH/KTzsi21Pe/AqSd5bNCcZLscpKZ5DukkNRJs1UlnkCsEMa7eJPdHZJQrLGktHY/Z
	1IFMLgeBrpWg5gRKhugjJRA0PCkruv8nL8IZZHfgTBf2nCTzvUS1Xe0d3r83SB60sErQre
	xAjyX59joX17bhvzte8GARLtpgkHiHQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-TKAymIRXOt2CvLSUr7fSSg-1; Wed, 04 Aug 2021 19:09:28 -0400
X-MC-Unique: TKAymIRXOt2CvLSUr7fSSg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9A801006706;
	Wed,  4 Aug 2021 23:09:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40CD3421F;
	Wed,  4 Aug 2021 23:09:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 300F74BB7C;
	Wed,  4 Aug 2021 23:09:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174N1LXg015895 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 19:01:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0F9511032B0; Wed,  4 Aug 2021 23:01:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09CCA1032A9
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 23:01:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B093185A79C
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 23:01:18 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-554-Tt0tWlQbPTqSlwMf7jWVnQ-1; Wed, 04 Aug 2021 19:01:16 -0400
X-MC-Unique: Tt0tWlQbPTqSlwMf7jWVnQ-1
Received: by mail-wm1-f52.google.com with SMTP id
	l11-20020a7bcf0b0000b0290253545c2997so2394116wmg.4
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 16:01:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=R/Uls8iV8IpsLr2gE70EtEnMmSaec17IhSIE44qY8xg=;
	b=U4cA634Yhiuacpvd4NxiuxHgFxvCA6lyPL+SVBVHVtxnYW7ACqgex84e0wetBGINoZ
	wKnuy1ki3eNOqJ6iDRGOK63cp47bPLE8EmW8aohof7y3GtZ25S6S32eWJfWqn5rFc+4a
	cMHU/e0D6Nj9rdh2HO2/Ta6E4/q5WxlHWVm3Kww4QYBhouP0M9bumXV1bsI+aPgvulVT
	KlN4TCht+M2PCzxhjRb1jKLb+Z+y40CtVeHOnSIOILrYRA4nS2kmIl9b6L1uqjfRviGe
	PojbeMcl7yl1ZSnaZ0Uq08qcO39IaoVcdpmkAblmLpeNbMjC8ZJ6EL5slGmLgfHQlhen
	TA/Q==
X-Gm-Message-State: AOAM530ImA2gbpEkIdIixRfSMHhTSHFAlagE2Ab8F8DFt6J11LuJqkXB
	V2b+vBn0OyaicraBuSygc9zqQJ15ou8U2w==
X-Google-Smtp-Source: ABdhPJwi0DshYVnVGF6YNkXcuP0JLKd6pHVEAOyBUhvf5pc0qVkiZWQQJaHZJ3Iq3MaTvWc/jhTstA==
X-Received: by 2002:a05:600c:4f15:: with SMTP id
	l21mr1625546wmq.171.1628118074430; 
	Wed, 04 Aug 2021 16:01:14 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	m27sm3877795wrh.34.2021.08.04.16.01.13 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 16:01:13 -0700 (PDT)
Subject: Re: Solus DE observations
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
Message-ID: <da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
Date: Thu, 5 Aug 2021 00:01:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As in, installed Mate, did a eopkg up and Firefox launches and responds 
to Orca keys.

But, it doesn't give output to Orca. For instance. Hitting Orca+T for 
time, Orca doesn't announce the time in Firefox, yet works fine in 
Seamonkey/Chromium/etc

On 8/4/21 6:33 PM, Linux for blind general discussion wrote:
> Yes, I'm aware of the lost focus issues,but not sure what you're 
> referring to with the "orca keys not announced" in Firefox.
>
>
>
> Glad you like Budgie,
>
>
>
> Dave
>
>
>
>
> Sent from my Lenovo Thinkpad, running Slint GNU/Linux. 
> https://slint.fr for info
>
> On 8/4/21 7:33 AM, Linux for blind general discussion wrote:
>> Dave, did you have the issue I'm experienceing with Firefox not 
>> announcing Orca keystrokes and Chromium based apps causing Marco to 
>> lose focus at times? Those are my two biggest issues with the Mate 
>> DE, but Budgie with a drop down terminal is all 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

