Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B9FAD3ADAE2
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 18:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624120022;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ko1M6JeONMLIhGqbmqoSHGZDTITI63XvPW8vjTIzoWo=;
	b=OVNAaZsYdR5d68G4Q7l7XFLpgMkB8K7f0lQWCaHFfuLwgKD1NFIDD7Xqi06+Ut+Y38Ha4l
	NmHiK1C5YfbEXpqwwA2uFz+Swk7mzvsWwHgdn2Oul0xOK8D5QHHu6Q4svVpgql48dBTegJ
	XJmN+G+9C4yCXZ221CejwnFGhX1pUPk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-YcXcvtmNMby2LQrORmNhqA-1; Sat, 19 Jun 2021 12:27:01 -0400
X-MC-Unique: YcXcvtmNMby2LQrORmNhqA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F29B100C618;
	Sat, 19 Jun 2021 16:26:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B99D660C9F;
	Sat, 19 Jun 2021 16:26:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6994F4A702;
	Sat, 19 Jun 2021 16:26:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JGQkrG014056 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 12:26:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 88CCF2166B1F; Sat, 19 Jun 2021 16:26:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 843ED2166B1B
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 16:26:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3790185A79C
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 16:26:42 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-282-uRMYRF3UM3-pyCyuAhezgQ-1; Sat, 19 Jun 2021 12:26:40 -0400
X-MC-Unique: uRMYRF3UM3-pyCyuAhezgQ-1
Received: by mail-qk1-f170.google.com with SMTP id j184so19084193qkd.6
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 09:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=aK6kPg2t105FuKkOUVuMybY5OZ6qvfFHSNGfmxXmLzw=;
	b=iJSFFcAfR0ZTcAjuMsXlrd9kmGd2vqB1Rh+GTw6ieJ8gAhGf8rN+AWmbD5bOjYpg6S
	+YY20ryt8S48j2lZrXX71oDJ2D8MxCid5rmnnl0idzotQn87W2LkEsmoI5JnR8xhPhmO
	HH0bYcqodg+b0r5U2HOzh4vTRwchFwqmI4MKB3VsCiOEGDdufQIlze1wi4G69EElMwSn
	F9mOlQrJdyJDs2826bo3MOoU9rLGAOyrJl24zmH8eYPLyTY1zjBBbrzBV8UIjOnEGNdP
	49K40WgtlZq/gLqoqTYPNoczyu4Qpk6ZieVHnfpHGm+gc0wrkCYr8k6ILYaGBo0hiaf1
	s5sw==
X-Gm-Message-State: AOAM533hJD7VO1danvF07JB5SAlnak+iOulU+zHfwG8FkjHmY6MsV+0g
	U6kLxZmL7zdXtVdv3EckwN0x2oZy0Dz6FyZnL+ZbrVlomKY=
X-Google-Smtp-Source: ABdhPJyZUOJrW6Zn+tDFH7cmdK0KtkmixsjkdAw0BblJ/UxOdefniO+Sv8n0xfz3yDu+1qSQF4KDFP52UeU5cHWDb7k=
X-Received: by 2002:a37:6c04:: with SMTP id h4mr15573641qkc.182.1624119999799; 
	Sat, 19 Jun 2021 09:26:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:fd8c:0:0:0:0:0 with HTTP; Sat, 19 Jun 2021 09:26:39
	-0700 (PDT)
In-Reply-To: <CAO2QrD4sNDb913pvuHF1UXQmkTa96kwfyPYz+tbW8OAgSahBTw@mail.gmail.com>
References: <CAO2QrD4sNDb913pvuHF1UXQmkTa96kwfyPYz+tbW8OAgSahBTw@mail.gmail.com>
Date: Sat, 19 Jun 2021 16:26:39 +0000
Message-ID: <CAO2sX32GdWh4kcy1eA=g+s287oYsZm2ZE+gsg0UOMLVO0-6XAQ@mail.gmail.com>
Subject: Re: Accessible linux distro for raspberry pi?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm not sure what you mean by setup screen in this context, but as far
as I know, Stormux is the only Raspberry Pi image that's actively
maintained and comes pre-loaded with blind accessibility already
setup.

That said, several users have had success setting up espeakup or
Ffenrir on CLI-only images from several distros over ssh, and recent
versions of Raspbian's full images are supposed to have a keyboard
shortcut for enabling Orca(though reviews are mixed on how well this
works and how well Orca works with the Raspberry Foundation's Pixel
skin of LXDE, though people have reported successfully getting Orca
running with Mate on higher ram models of the Pi 4.

You might also want to check out the Raspberry VI website and mailing
list, which are dedicated to blind accessibility on the Pi and double
as a general low-vision hobby electronics blog and mailing list.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

