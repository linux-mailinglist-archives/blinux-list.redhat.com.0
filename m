Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 782C13E06D1
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 19:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628098519;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TUapRKOLIA8pVyioOMDFjI7bXDIn9G97q6vft9BdawY=;
	b=eywRkPNiXnVMjMCn1SM6uaihNkDmgmLP2U56n2UXWszlI446YJvcyXBFiyOQKcaMRIEYdM
	Ri+0bIAw6oKMkNy71UQeWouC92RXm4UpEXyLPKYdhKiUkoPISgVXz7zhKTRSkRPsVb99uW
	NVaGv2gLOlljnBIU2AGeSKunNj9UcCc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-173-s-sJxuMFNSytlzE3uT_YCw-1; Wed, 04 Aug 2021 13:35:18 -0400
X-MC-Unique: s-sJxuMFNSytlzE3uT_YCw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A95193931;
	Wed,  4 Aug 2021 17:34:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83C69369A;
	Wed,  4 Aug 2021 17:34:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC0584BB7B;
	Wed,  4 Aug 2021 17:34:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174HXSHS009519 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 13:33:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 97E9310D16B8; Wed,  4 Aug 2021 17:33:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 922DA101B741
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 17:33:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06931872622
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 17:33:25 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-163-_-FUYo4rM0OQwteKy2Wycg-1; Wed, 04 Aug 2021 13:33:19 -0400
X-MC-Unique: _-FUYo4rM0OQwteKy2Wycg-1
Received: by mail-qk1-f174.google.com with SMTP id c9so3461314qkc.13
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 10:33:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Xmxzj78IUIrBenGr/IjwWMj1E6xsJ+3XOMp4LFZvPyg=;
	b=UWVxKoYLx/6bbYV7TP7w5BrODFv0dVs16+7ku08I8A0fp5MU1TItO3M5K4Z7uqnHjW
	hOJ575tQvY+ME/3ePa+MzhtW8dXhjRzjnG/Zuxk2F4MbG4XfeJSeow/HN5LN1jkfUSwU
	ooLhdY3AwkpxCVeoi7uAEtHuBEMtrfd6ruy96dzF6lQsv/Vx8tSZjpdNygfzu8Wo+0Qy
	I4zY/Bqf0wzHunYQPsNJ1MosFHLDe5C06pgBOyM1sgE7Exsk3qXHHj/uPo4Gn4ayioGS
	PtD3n5rPl9Eb8W50giLi5/mcHKXnoUp8NCS9/ADew3LPymeTbC98viw+JyEdXt6yOng+
	OtIQ==
X-Gm-Message-State: AOAM530vDhPKbm41/EBC3LAOelFiTVQdvBbMLGMvElBYfwrKzvdbvBal
	Wc5oYS3eMyT3bfA3CBq6AsST5pajKGy09A==
X-Google-Smtp-Source: ABdhPJy4VNOnTkYtyoJFo3TvutQu2dqLtMpWKUbuH/OQAanMKRhGcssufurVvdt2KFbsb0/sTKQ3gA==
X-Received: by 2002:a37:a647:: with SMTP id p68mr523082qke.133.1628098398843; 
	Wed, 04 Aug 2021 10:33:18 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id f5sm1647517qka.19.2021.08.04.10.33.18
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 10:33:18 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
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
Message-ID: <dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
Date: Wed, 4 Aug 2021 13:33:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Yes, I'm aware of the lost focus issues,but not sure what you're 
referring to with the "orca keys not announced" in Firefox.



Glad you like Budgie,



Dave




Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info

On 8/4/21 7:33 AM, Linux for blind general discussion wrote:
> Dave, did you have the issue I'm experienceing with Firefox not 
> announcing Orca keystrokes and Chromium based apps causing Marco to 
> lose focus at times? Those are my two biggest issues with the Mate DE, 
> but Budgie with a drop down terminal is all 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

