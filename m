Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CCE903C8B48
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 20:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626288686;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l00oVvg5BzvteJE6/7Rs45shAtZ9WW60f7nj5I//9to=;
	b=VVVLCRk/Cw1QIhl4v98OkDqJKo72sG9vaWczSUJ5oJdmWE4iYP+6S+Y4clidYYjRb/XNCs
	JC31B5tmLNWCteS4z3U+5TlrPiThog/ZCm/68S0hpExWdlTUW0Gg6Ic65DSr1Th6gl4U1Q
	3s+TB9yhBg7hlWrMYKRNI7L6ALA4tzY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-JqkI8JlvNwGtWTxQttuw9w-1; Wed, 14 Jul 2021 14:51:24 -0400
X-MC-Unique: JqkI8JlvNwGtWTxQttuw9w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18470804142;
	Wed, 14 Jul 2021 18:51:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7B0C60871;
	Wed, 14 Jul 2021 18:51:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 94EE61809C97;
	Wed, 14 Jul 2021 18:51:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EIpAJj005484 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 14:51:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB40A2080980; Wed, 14 Jul 2021 18:51:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2320207ADD6
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 18:50:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D44FC18A01A0
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 18:50:55 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-320--h4BXCaeM0uQfTcEB6CoHg-1; Wed, 14 Jul 2021 14:50:53 -0400
X-MC-Unique: -h4BXCaeM0uQfTcEB6CoHg-1
Received: by mail-wr1-f48.google.com with SMTP id f17so4475968wrt.6
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 11:50:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=0HVoKh8vPXTA0GZsWaTZFy3N0nP1Db76GDESNwf7hR8=;
	b=nS3GooSmLDCGSx5o9XYAPAr4W5oXxJemu3r7ZuOGhnR+da5lrFdwYvV0uQVs2b3Wnj
	Q6rfZV6eWmUWeWO4IE92feGgdwd2afU+Vi2Ufq+RqN1Yqbhna06B5Fqmw3x8V7RQdnTC
	sgjXx9KslvxzpLDtm+DAj0ycIlI2mrzwR1nDnYAhvx1EnfUzzcVz4yi+GxrvNf/dWtnt
	R0ktZCStUWbBnJJsWIZC+TLFNpyaTUV66GaIQf4ADVPjJAPy67w1cLqc2CM65V074L/F
	U0ach66oCE/SWhgWNljAX/puCmlzjaO86/ElNvXf1P6O7tdmkV4rguDwi86NZHTAz5u4
	w8Gg==
X-Gm-Message-State: AOAM532Dr1GKdFkPZ1UQ4IwU3AwBjVWHgYLyxAH50n0gFUz3lFV40YEs
	n0EUcWiJrDoqAIxZ190dhiUf0O79f3s=
X-Google-Smtp-Source: ABdhPJw1x38snjjPGlXf4OkfsKAUqV5FLFBGExjJZANFviAjvh/pRPga8iXjEOpQ9aUCSBfw3gnnzg==
X-Received: by 2002:a05:6000:1141:: with SMTP id
	d1mr15467452wrx.396.1626288651538; 
	Wed, 14 Jul 2021 11:50:51 -0700 (PDT)
Received: from smtpclient.apple ([197.185.104.161])
	by smtp.gmail.com with ESMTPSA id
	y197sm5374698wmc.7.2021.07.14.11.50.50 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Jul 2021 11:50:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Arch Linux post installation issue
Date: Wed, 14 Jul 2021 20:50:47 +0200
References: <005d101d-0a46-3f29-c74e-1dfb27441dc5@gmail.com>
	<CAO2sX33O78t=zZVJpAs5ci2_Tcipf3=ChohMLS6VVa2QDbCezw@mail.gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CAO2sX33O78t=zZVJpAs5ci2_Tcipf3=ChohMLS6VVa2QDbCezw@mail.gmail.com>
Message-Id: <48C878FB-420D-474A-84A5-1CD9CE0F54A4@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That would not be true if using the gnome desktop.

Sounds like either a Pulseaudio or Alsa issue. I had something similar happen to me a while ago. I reconfigured speech-dispatcher to run threw Alsa and removed Pulseaudio off of my system.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 14 Jul 2021, at 15:50, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I'm not familiar with Arch, but you might want to double check that
> 
> speech-dispatcher-espeak-ng
> 
> is installed. Debian lists it as a recommended package for
> speech-dispatcher, and I understand Arch is biased towards installing
> less, so it's possible that installing speech-dispatcher and espeak-ng
> didn't automatically pull in the plugin they need to communicate with
> each other.
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

