Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECCD4AF610
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 17:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644422871;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DhgaaGwOEzUE6vfG7LfWGZZpXTfzVPPSNUGLyjRNF6M=;
	b=OGvlq/dI0LrK14MnBjID9ntp/EplH7ILRnu5yf7cGXzS3U4K+r81m+Xm4Yy5JGz9xomFbR
	/a8dSefixBDwd3G445PI86o5rIrhhY9ptXSCUG8PjzAq5cRTuhJ7NS6GncpNgpoW7nM3qF
	ushd6PwiMVn+NXVmDokQIw67WqEQ/38=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-9GExX4WdP6axMRUjoQKYnQ-1; Wed, 09 Feb 2022 11:07:47 -0500
X-MC-Unique: 9GExX4WdP6axMRUjoQKYnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 061A21091DD4;
	Wed,  9 Feb 2022 16:07:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2F2D798AC;
	Wed,  9 Feb 2022 16:07:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 041A01809CB8;
	Wed,  9 Feb 2022 16:07:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219G4P7I013948 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 11:04:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 590AD2166B1F; Wed,  9 Feb 2022 16:04:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 542882166B1B
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:04:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CD67801E95
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:04:22 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-315-amRxHiodOyiBZ2VsKcckpA-1; Wed, 09 Feb 2022 11:04:20 -0500
X-MC-Unique: amRxHiodOyiBZ2VsKcckpA-1
Received: by mail-qk1-f182.google.com with SMTP id c189so1955077qkg.11
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 08:04:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=o7LO2B6ypcgRQdYIQO2Loscbck2c/nCPdS5qShBKV00=;
	b=HGes8abbMBspomsG2nXiMkk8NqEfJwQDHyYGCWkKwKfQsTPAKHWy0QxudW5U5Bfji3
	k97xOhO/JNxEuaOJKC5U19NII485vv9ex9e0ygltV68n+gl+EX5i+zHh3Ys3TuCmzibv
	6C6mkLcDDSOrwjBuxgV7pnBZrrdEYa3F56aR8EA8drXf+1HdsKbHPMee39f448yuVB20
	SVh6SEw/Wo9sq2Bc+9um0ooxka7U9W6Aly3P9DgCFvWEzg7/nddtICj4NuKG7VGjAVmw
	AMPoSZYFmlyfWnqghOZWmBmoMd8DNEK0JwP6V7W4kTdjafBoUw5SF2L0hLQVrBKm9a05
	hm3g==
X-Gm-Message-State: AOAM53179HmCwDZ0VbxKFeRAa1Rjuv3I9R1954VIRVKTtHGkqu3xsJXm
	7QnwBMF3icifXGPilpRR8MC3LCRUvmxcIQCAz8AyoNDk
X-Google-Smtp-Source: ABdhPJzJV1nIBUDaELKfbJtpLEg74RUGLCoNP4zagkhoeVhavTPYK3YPAjPJK9M7fLAeD+FgFfY7DXphXXmz2aIxor0=
X-Received: by 2002:a05:620a:103c:: with SMTP id
	a28mr1430335qkk.407.1644422659706; 
	Wed, 09 Feb 2022 08:04:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Wed, 9 Feb 2022 08:04:19
	-0800 (PST)
In-Reply-To: <da2dd400-8055-3777-60a3-89c1b8a34df5@protonmail.com>
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
	<da2dd400-8055-3777-60a3-89c1b8a34df5@protonmail.com>
Date: Wed, 9 Feb 2022 16:04:19 +0000
Message-ID: <CAO2sX30tkfHK=CR5Bz717rOKEYxyw5iXRiqfLW=BiYBtVAXffA@mail.gmail.com>
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think the point of wanting an accessible ratpoison, i3, etc. setup
is that Gnome and Mate are both fairly hefty environments in terms of
resource usage, and Orca, if you'll pardon the pun, is a whale of a
resource user itself while these alternative window managers are
designed to be as lightweight as their creators could manage.

One of Linux's appeals is breathing new life into old hardware, and
there are many machines that would choke on modern Windows and could
handle either Gnome/Mate or Orca, but can't handle both Gnome/Mate and
Orca and still have enough resources left over for running apps with
acceptable performance. And since the only real alternative to Orca is
ditch the GUI and do everything in the console, the focus for putting
an accessible desktop on old machines tends to be onstripping out
unused parts of the desktop environment and switching the vital
components to lighter weight alternatives.

Also, as its name suggests, ratpoison is built from the ground up with
a keyboard-only, no mouse setup in mind, and blind users tend to fall
into the category of users who don't like using a mouse.

Anyways, I myself am using the fast, light window manager(flwm)... but
I can't really speak to its accessibility since my setup doesn't
include anything remotely resembling a full desktop. Firefox is the
only graphical application I use and I launch it via a script I did
not write and understand next to nothing of how it works that
basically gives me Firefox+orca running as a kiosk on top of
flwm(though, while a true kiosk would prevent closing Firefox, on my
setup, closing firefox ends the xsession and drops back to the
console. The script uses compiz as its default Window manager, but
changing which window manager it uses is the one thing I've figured
out, and flwm was just the smallest window manager I tried that worked
as a drop in replacement... and even then, Firefox+Orca are such a
Behemoth and Leviathan combo that some websites(or having many tabs
open) slow my 4GB Ram, i7 20-something-hundred machine to a crawl(My
system drive being platter based probably doesn't help matters
either).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

