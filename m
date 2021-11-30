Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F45463DF7
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 19:44:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638297843;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=15H0rB0sTu/Esz2F5wqQ2Ebr+D8Yd2dA1tlnHN4Qcxc=;
	b=LwnAizY0QrlX6YDHEG+081DL0l+YAJz93wegxi2JGALpoogUscgV/0TrQcKVG9D3Iyc+2+
	3/YijgQTGsRNLO76h2ozyh5jlF3Xq4zXX4Yh00OodAiQENnbvRB4cWwIAR2KYtrD92vWkH
	yebDVmit6sZOFrD/FstRrKRyzyo3t4g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-75-t4RqaKLkMNWszxy17PI-Rw-1; Tue, 30 Nov 2021 13:44:00 -0500
X-MC-Unique: t4RqaKLkMNWszxy17PI-Rw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA7482F20;
	Tue, 30 Nov 2021 18:43:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1799F19D9F;
	Tue, 30 Nov 2021 18:43:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D07BB4BB7C;
	Tue, 30 Nov 2021 18:43:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUIhhI3016272 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 13:43:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 502392026D4D; Tue, 30 Nov 2021 18:43:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AE4F2026D46
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 18:43:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7433285A5B9
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 18:43:40 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-353-amUULWQ-MtqPPJ8V1o0yAg-1; Tue, 30 Nov 2021 13:43:38 -0500
X-MC-Unique: amUULWQ-MtqPPJ8V1o0yAg-1
Received: by mail-qk1-f175.google.com with SMTP id de30so27951417qkb.0
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 10:43:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=v6gzoOrb4+MavEy0IlgtyZJN7c1NmA/WVQJZMMYTgUg=;
	b=6/m3lIIIfOp7k3WWc7iNaxcBCFo9zWfyvFQvGzDrjQR7kCrJ6GWeLy9WaCRUN4DFkS
	vEzSyN5PAiCzLJkNAY4kGer6tGnrWIEMHR36uYPw+XfUVs8OCDJflAEsvcXKjr3y0NNz
	XuTblJbCzNY06VcVnYMrO2N6nhK/DtzOgUCvVGh1qbXlYWz7fa/oea4t+S01KfoLyhOI
	67qbYUQrcODjseveqveAZhm3hwKJNehdFIuQxMl7jI6Zs2MIVnYmpBO1weAOkukZErRl
	RD4v+HVdDq2ZRZbIaeqwL5k7YFqNC7DmobpxFVmcVMW4OC9WY/4TMFl++5QZrXHwfg14
	f4Zw==
X-Gm-Message-State: AOAM533or+aL3mwS4R+IfoanEygxVy805EHtebKh4vOCRyUzOWqtUKC6
	2q25MGR7GwHdxeMlbWu2rRBPHSWu0KadZJQFG7R/OTwg
X-Google-Smtp-Source: ABdhPJwOz0/GQUQnnFx3YPP8fBWG5bDUV2L9kXcmPz6H9kziHtTrMqq0t0ome2tOiXROzFIWTwW9LC7BBoZudbuiF98=
X-Received: by 2002:a05:620a:4041:: with SMTP id
	i1mr1148964qko.407.1638297818032; 
	Tue, 30 Nov 2021 10:43:38 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 30 Nov 2021 10:43:37
	-0800 (PST)
In-Reply-To: <CAO2sX33Ek3Vo++4TGSxSnphQWRorYkz9x8325Ap83pkJwmrLXg@mail.gmail.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<CAO2sX33Ek3Vo++4TGSxSnphQWRorYkz9x8325Ap83pkJwmrLXg@mail.gmail.com>
Date: Tue, 30 Nov 2021 18:43:37 +0000
Message-ID: <CAO2sX30XbkuP2_AanFY5Am9xiy3X+mhg=Tbrh3pHc273Vq2O=g@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
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

In all fairness, a pair of scissors, probably the most common tool for
cutting paper, kind of looks like the letter X, but honestly ctrl+x
for cut and ctrl+v for paste most likely came about because ctrl+C is
copy and x, c, and v are adjacent on qwerty keyboards and there's a
certain sense to putting related functions together... Then again,
even the mnemonic keystrokes probably only work as such in the
language of the one who picked them and maybe a few closely related
languages if you're lucky... and that we even call these functions cut
and paste is arguably an artifact of a by gone era, similar to how
often GUIs use floppy discs as the save icon or old-fashioned
microphones for record icons.

I will admit, I often find myself trying to use nano's key bindings
when typing stuff in Firefox... and if I had the programming chops to
write my own web browser, I'd probably have the Universal GUI
keybindings as the default when editing text if I was going to release
it, but would want to have the option to use nano keybindings if not
just embed a nano "window" in the active text box.

Though, on the subject of comparing emacs to a desktop environment...
and perhaps it is more accurate to call emacs a TUI DE than a text
editor, as a general rule, those applications another user mentions as
things you'd expect a desktop environment to be bundled with are
completely out of the way when not in use, can be ignored or removed
if you don't use them, and can be replaced with other applications if
you so choose. From the sounds of it, emacs is less a case of bundling
an editor with other applications and the suite having a unified look
and feel and more a case of mashing several applications together and
if you just want a standalone editor, there's no way of uninstalling
the other stuff, though admittedly, that's speaking from an outsider
perspective.

If nothing else, it sounds like emacs runs contrary to the "do one
thing and do it well" and modularity aspects of the Unix philosophy.

Though, to add another text-mode editor to the pile, there's also e3,
who's two main advertised features are small size(Aptitude lists
uncompressed size at 72K compared to nano's 2833k) and multiple
executables that each duplicate the keybindings of a different text
editor(including emacs, vi, pico, and nedit).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

