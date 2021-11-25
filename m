Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F30A45DCFF
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637853115;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TFERSjuyMMgsbfAh+cZf3A2mjf9N+ocV+0w5s3GU3i0=;
	b=KZsaUOCUR7yYzJJlsdlYJnDmrlDbdQtZz8ZrDHjx9nuoH4fTnMKGCnpCKE8uc4YUvmUVW0
	zHBOygwnwUByiSfQ2FfHQwkFKDw2pUf59fffmy0K+r/8TccG8FnxhLLaskgd20EV4dxCLh
	iSjyfAsiB/wTXNYSzixGfq5qbNlkQaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-585-_Y0Z33GCNLC141_B4TalQA-1; Thu, 25 Nov 2021 10:11:52 -0500
X-MC-Unique: _Y0Z33GCNLC141_B4TalQA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB6B02F23;
	Thu, 25 Nov 2021 15:11:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC7BE76606;
	Thu, 25 Nov 2021 15:11:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 90EB21809C89;
	Thu, 25 Nov 2021 15:11:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APFBhbN011217 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:11:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9EC0151E5; Thu, 25 Nov 2021 15:11:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97CA551DC
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:11:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF2D685A5BD
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:11:40 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-334-MOGz9hXvP6qpA7QSdp-6mQ-1; Thu, 25 Nov 2021 10:11:38 -0500
X-MC-Unique: MOGz9hXvP6qpA7QSdp-6mQ-1
Received: by mail-qv1-f50.google.com with SMTP id bu11so4852267qvb.0
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 07:11:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=4MlQsw02xlUeFN84itXEm6RuFG04f8JG1HwCqdi0UFc=;
	b=qvH+gXqAdoy+2jjvCg/RDFLHW6twpDtLtbsCprBx7hkxLXf9lG5pis6vT9QQTZXBxU
	y5Eg/o6zZ64XROwxV6kFvgRZxjD2B8E7RFfvRcgYvHaUjsB9umncHtrcun7vdD5W/TX/
	kjEwSSr6DZ6P/t23ZFVs++c/+escmK3pGGDLTfRucUVemxBjf5GQWcorEg0yZshCA7+b
	bFkvJ7LghawUTDPKXjfBzsfYYFLdRnhrXmiHfOjPnCrUneSs1iQ2qzc/AcbeF1gm0u6N
	sh5wkitnReWJSq18FlnWS3xxnFLliJfnZNEICmnYKhlnxsJ2DDj029UK45zEo8o58r4D
	k5+g==
X-Gm-Message-State: AOAM533JnT1uWxhpNmEMVeNgKQmSrdV4hmyPgL7g06GWAmCN37qIgSs7
	HZvwmA0R2U13p4QXwQsZ8FggW1w5sTE=
X-Google-Smtp-Source: ABdhPJyh1NgUCsroofki9rvFryRSUSvc6rYB0QDeMvHXekS5izX4yh4ZP9I63xEBFmNQQLs5sI/2dw==
X-Received: by 2002:a05:6214:2a84:: with SMTP id
	jr4mr18664504qvb.35.1637853096942; 
	Thu, 25 Nov 2021 07:11:36 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id w9sm1574941qko.71.2021.11.25.07.11.36
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 07:11:36 -0800 (PST)
Subject: Re: Fedora and virtual machines not starting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
	<8901a934-19f9-f008-74c9-e48f00296f9c@gmail.com>
Message-ID: <ca9cd873-a4ea-a98b-a926-015f91528a7f@gmail.com>
Date: Thu, 25 Nov 2021 10:11:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <8901a934-19f9-f008-74c9-e48f00296f9c@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oddly, I got no sound using both Workstation and MATE-Compiz 34 isos in qemu. 
This seems like a series of bugs with pipewire and/or wireplumber, they don't 
like something having to do with virtualization, either something with session 
management that is different somehow or the virtual sound hardware 
implementations. Either way, this would appear to explain why most other distros 
run with sound on a vm, and why Fedora has sound on bare metal, but it doesn't 
get sound in a virtual machine. Most other distros are still using Pulseaudio 
out of the box and either haven't yet packaged pipewire and wireplumber or 
haven't yet made them defaults. As most of the time this kind of thing is tested 
on bare metal, vm bugs may take longer to find in testing, so this will need to 
be reported on the bug tracking system if it's not already there. I can take a 
look and report the bug or either add my findings if it's already reported.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

