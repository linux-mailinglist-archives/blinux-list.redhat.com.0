Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6D1E13E0A88
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 00:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628117364;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FQoXvjVxgnkXA2oNnN/172qPjc3nqK/CrBpMbrqFA5s=;
	b=bJefR3u/8atJgqCZ4Zp8oLIdPZ514zwr+2iDrUMroM/jJjIDDdVftpICs95nuaCMLZnyh/
	5pmmqlkNokzjQkjTacbOmVFI8s8RA75ktI9tDTg75bVe+NJaLCcRWsYZmpgnell7Yo+2Dx
	E8EU4AyVBZmYAIWxJPm4QqWuGvz9jdo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-429-F-49w1JyNVyDtds1lQ0PPw-1; Wed, 04 Aug 2021 18:49:23 -0400
X-MC-Unique: F-49w1JyNVyDtds1lQ0PPw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 273A7100CF78;
	Wed,  4 Aug 2021 22:49:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E8695C1B4;
	Wed,  4 Aug 2021 22:49:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD4D7180BAB0;
	Wed,  4 Aug 2021 22:49:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174MnDmq014587 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 18:49:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A70E22039DAA; Wed,  4 Aug 2021 22:49:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2BE720341D7
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:49:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A05AD96B05D
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:49:10 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
	[209.85.161.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-196-zps1Kf_nOViW5DckLM7xJw-1; Wed, 04 Aug 2021 18:49:08 -0400
X-MC-Unique: zps1Kf_nOViW5DckLM7xJw-1
Received: by mail-oo1-f47.google.com with SMTP id
	n1-20020a4ac7010000b0290262f3c22a63so850902ooq.9
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 15:49:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=mY+fNeT32PZGepJEFQ6aDDKKcmDE2hRDSgJOAqUwdrE=;
	b=VrO+KTmP49zpaBWq2JSCmMtdhnyHkpiJSwuy0nKhs6Sr59P9q9ThgtCESpDmNzbHVx
	kcbGeI9QUnctHHHIAJlRiM4o3ySr9Izmj2D8+390UwGIYVw0Gqk+7hFZW9RF+nJm1RsQ
	Ro8MX2JZ8PfL0bXEUj5uR1KJkHNKPFs/p3ElgkzgZeZrhDos/FVny0pKlml8uzaguj3P
	ekSvWLMUJH/Scz4A2O1+0aJMGmvQtPoQEpBoEfvFgoKSLDLgcbq6ckwfWRKzJpYNvnEo
	MKwTmcAwPd///wEtQGgdkV4waCAReKR9yGvMO3vURz4jwbjobn5FDd+Ek5/ehVcb4frp
	HG0g==
X-Gm-Message-State: AOAM5318Trw6dOW+W3rWzhsLJMgl68NVAB1ZvmzXuI9nih5FRffh+ms1
	PHonklwF0tAb5h4nVH1zp+rHXVhri6U=
X-Google-Smtp-Source: ABdhPJxALFlG79JZEGFp4MJgzdDm+GZtcye5V4wF5yGXggJRG1dgOKFuZmV9n3dvMZ9XpNB2j+UfbA==
X-Received: by 2002:a4a:8c33:: with SMTP id u48mr1091820ooj.63.1628117347664; 
	Wed, 04 Aug 2021 15:49:07 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id d20sm628506otq.67.2021.08.04.15.49.07
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 15:49:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 17:49:06 -0500
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
	<924A2902-6BA1-4033-94AC-B8A5B1AA40BE@gmail.com>
	<8fc3ab17-efb7-9d38-98da-bb62da6f990c@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <8fc3ab17-efb7-9d38-98da-bb62da6f990c@gmail.com>
Message-Id: <6478E11B-5D67-40CB-A9CC-82F38F477C07@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 174MnDmq014587
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I could not figure out what all the buttons were for.

> On Aug 4, 2021, at 5:03 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> 'ctrl+alt+tab' seems to cycle between the desktop and a bunch of launchers; orca sees them as toggle buttons.  I think, when one of these buttons is announced as 'pressed', the program is already running?  Guess I should put Budgie on the Solus machine and play more.
> 
> 
> Cheers,
> 
> 
> Dave  H.
> 
> 
> 
> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
> 
> On 8/4/21 5:31 PM, Linux for blind general discussion wrote:
>> I tried budgie, but guess I should look for a guide for keyboard commands as to how to get to programs, and how to get to different drives.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

