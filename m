Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7A133ADB87
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 21:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624131512;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Loh2xJzq7KbLYmPDHjh7O71dXU7I9npMBxaNsXK9b80=;
	b=UdYIqVj/aJ+OorSCa1PwKidqBVTJQi/AdvoWagirco60uCby9S7x7xE/gSG7VKeGJ6ursY
	Revij1So0+GrihYp295O4qO4Y3hho2H9axPejba5gJSrjkE6J1yvWiP8lXz+iiuSkBLy7j
	XFBl7k4A/SmbL6fuBaUpSoa7PmaFKTQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-xU7Qi13TMUmeGn8BJe9slQ-1; Sat, 19 Jun 2021 15:38:31 -0400
X-MC-Unique: xU7Qi13TMUmeGn8BJe9slQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1E7E100C609;
	Sat, 19 Jun 2021 19:38:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F22A19C44;
	Sat, 19 Jun 2021 19:38:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B453C1809C99;
	Sat, 19 Jun 2021 19:38:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JJcHbX032647 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 15:38:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB2991111445; Sat, 19 Jun 2021 19:38:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A60C81111444
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 19:38:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C899805C1D
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 19:38:14 +0000 (UTC)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
	[209.85.218.68]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-523-igh_oVUtPY-KD7SkOhv8Gw-1; Sat, 19 Jun 2021 15:38:11 -0400
X-MC-Unique: igh_oVUtPY-KD7SkOhv8Gw-1
Received: by mail-ej1-f68.google.com with SMTP id nb6so21405861ejc.10
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 12:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Gp7e/OF34FT5DqiXTOcFtz3YkmSBOtGhkqHzb2e0h6I=;
	b=onATlWmTg/DoHIYkz5AHulcTwYFWnwBzZC8jQ4feaRU92gcpUgWaI26FqytFhiHavQ
	ujFh2nI7ehWQw12tBeB6Xy7s3FtkWNUYJVxrU7bzctjB5Sqm8Iwl1lORpK9rSWjefVLs
	bP1sA1J9SFm3oafZm97tf3JHEhGBitHLcHouHMxaFUC7s9hKa5Cgw3EjZEL2oSlmV+Pm
	KYj6rYJ7uLczJIk2/mnaPhUGZ3h3Itmm8kSbraVmzl9x9GY/jwDHGTfwtxPVGxo1OWJi
	QlIv/fmo99AlRiVH6l4dFDPpDkQn73Jv8cRvYEuSCq2K4DbaKhW/5RohvfCMVnoobppf
	4o7g==
X-Gm-Message-State: AOAM530vcDRDJcJVVywXe/3ppGMALI1TuRMGCho1xW6LrP++vgH+RE3c
	UHhsWmpovp3B+uxWrCPYpklT+VBGdQu/5+BxMniV9Q3+
X-Google-Smtp-Source: ABdhPJweNB8Ch+h5VqgNxHuiw8r37ZzrF35sLaEmAtUqzfZ+9gg8eJUxX6Waq966hSB41f79AY+pt4O7g0NVjY7eCYw=
X-Received: by 2002:a17:906:5488:: with SMTP id
	r8mr16942483ejo.374.1624131490190; 
	Sat, 19 Jun 2021 12:38:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:ecf2:0:0:0:0 with HTTP; Sat, 19 Jun 2021 12:38:09
	-0700 (PDT)
In-Reply-To: <CAO2sX31EVN-HUgAN2R1ac_Ms5HdcnwXhTCW1JjH6-9GdXGKd1w@mail.gmail.com>
References: <220000834.4.1624128838799@localhost>
	<CAO2sX31EVN-HUgAN2R1ac_Ms5HdcnwXhTCW1JjH6-9GdXGKd1w@mail.gmail.com>
Date: Sun, 20 Jun 2021 01:08:09 +0530
Message-ID: <CAO2QrD5n9ASCMtO+2afPrVPJTawxb2W6AgmtVKFpHY1p4XcsKw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Not sure

On 20/06/2021, Linux for blind general discussion
<blinux-list@redhat.com> wrote:
> Raspbian is ultimately just Debian with a few tweaks the Raspberry Pi
> foundation made, but is there a way to put a completely vanilla Debian
> on a Pi?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

