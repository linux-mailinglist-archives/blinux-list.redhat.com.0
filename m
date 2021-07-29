Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 788A33D9DAF
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jul 2021 08:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627540375;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o1Bxj6uoJvMxGoPpBJ8p1PwMEU4OvB5DsuLxocSPTQI=;
	b=BTy0dZLHPdfJUXERFdLd+TqSh+3mWwNartoZ8uqEY1DgWYHNewPOtiQS1jR023/ZTTDWcG
	gtrsPAXM4ZYpEv/9TrQDeDD5rfQg5Y0JFZLVf85ET9VC2LBV9IBf0qUdJ8cRG7Te1Q+gWX
	Qtgo9/qLJPSFnaFXkdiD8eKOWhmabLI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-E84sCOYCPD28iLP2GbnQ8g-1; Thu, 29 Jul 2021 02:32:53 -0400
X-MC-Unique: E84sCOYCPD28iLP2GbnQ8g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BCA37107ACF5;
	Thu, 29 Jul 2021 06:32:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D1D860BF1;
	Thu, 29 Jul 2021 06:32:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 86AB7180BAB1;
	Thu, 29 Jul 2021 06:32:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16T6WUQC006053 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 29 Jul 2021 02:32:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BC427108BF2; Thu, 29 Jul 2021 06:32:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6C0A108492
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 06:32:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40D178D138D
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 06:32:28 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
	[209.85.161.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-13-T1dlWRVQMKGR1R_V0cBGvg-1; Thu, 29 Jul 2021 02:32:25 -0400
X-MC-Unique: T1dlWRVQMKGR1R_V0cBGvg-1
Received: by mail-oo1-f47.google.com with SMTP id
	y11-20020a4ade0b0000b029024b4146e2f5so1321952oot.1
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 23:32:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=/RNy5JQwfTM3nsTo/iM5jXF0LRc6Tx1lVGU8gAYX+34=;
	b=TNBrm1oR83SYcICXmpRXV81uo2I5UrxB2tAwmFiQMdAU5bRwZV/9Cbp6rY4fYqc3R+
	50dto+7V8pXm3xyHwRZ/YlRZ4J903Lm5ibhP6tc5U2sZjTnqhqFz0bT4MHWzS107VBJn
	WppIoA+gTotb+tu8XjF3T8ANFbh+CnXOgnjnSl3iiXREvp9J0Z9lSFr5px9zLL9TNzvG
	TauatRbF87xXhY9C7sereMS2qjGR6CTJeAf6QNqsbp8r7XklEoOb8gmsuWI4knbRgmvm
	iXCcZPK1vDBf0bIeGfVIEhtjDXurze1d0ym5BxNyctvKUaBCCTMKwlbiJkg+uxww1VJ0
	9kvg==
X-Gm-Message-State: AOAM533T1/N/yVoCBlACTBAetQletNbf9/2rhMsEftXagSWshS/CEVxo
	8RI1bLNrN+Hef+OVrJtY/m7bniFFfmc=
X-Google-Smtp-Source: ABdhPJx/4djYscnTctU8VSozw29qDYlFAYJYBhklnIzkFv316F0OAKbvTbEdQuQW5GLkY7BnudJW0Q==
X-Received: by 2002:a4a:cf07:: with SMTP id l7mr1991785oos.11.1627540345118;
	Wed, 28 Jul 2021 23:32:25 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:d8fe:ce33:be0d:da9])
	by smtp.gmail.com with ESMTPSA id t7sm417386otl.25.2021.07.28.23.32.24
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jul 2021 23:32:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Open Suse install?
Date: Thu, 29 Jul 2021 01:32:21 -0500
References: <b3f2a77d-40b6-1404-33ba-21580c29f6dc@gmail.com>
	<CAD_4ddSaTQ3FGNw8RaizfH4_Tau=zZ2w_UUnSXu2m8bazCa54Q@mail.gmail.com>
	<alpine.NEB.2.23.451.2107281141570.22533@panix1.panix.com>
	<5920c0c0-e7bb-7b9f-030e-e5cb197f7bec@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <5920c0c0-e7bb-7b9f-030e-e5cb197f7bec@gmail.com>
Message-Id: <A1832940-055E-48F7-A0FC-2EBD8FA9E9BC@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16T6WUQC006053
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

I tried starting orca with a dvd which had leap, and that did not work.
This is strange to me because of the fact that at one time, Suse Linux was one of the most accessible, comparitively.

> On Jul 28, 2021, at 7:02 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Trying this with the latest GNOME tumbleweed, I find that there seems to be no way to start orca.  'ctrl-alt-s' does nothing, nor does trying to start orca from the 'run' dialogue.  I do get the volume pops and speech-dispatcher seems to work, using the 'spd-say' command.  I'm doing this on real hardware.
> 
> 
> 
> Thanks,
> 
> 
> 
> Dave  H.
> 
> 
> 
> 
> On 7/28/21 11:45 AM, Linux for blind general discussion wrote:
>> When you boot tumbleweed, listen for hard drive action if installing on
>> real hardware.  When all of this stops, control-alt-s will slowly start
>> orca up.  Once done turn assistive technology on to avoid doing this
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

