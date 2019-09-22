Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D16CBBABB8
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2019 22:46:04 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 715801DCD;
	Sun, 22 Sep 2019 20:46:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C3E9A600F8;
	Sun, 22 Sep 2019 20:46:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D97CD4E589;
	Sun, 22 Sep 2019 20:45:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8MKjo0J024393 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 22 Sep 2019 16:45:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6E7BD60C63; Sun, 22 Sep 2019 20:45:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx18.extmail.prod.ext.phx2.redhat.com
	[10.5.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6843160BEC
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 20:45:47 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5695330821A3
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 20:45:47 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id u22so14810043qtq.13
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 13:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=7vGK+LEnPBgLTevQnmBmrM33ER/YvO0RX14hUHJDCa4=;
	b=EhtsHyWPKR7PMVV0Bakx7VBNGEFmm32S6znwK6X+aE6mm5l5E9QIjH+mVdrVoxweWQ
	4ROvOxNrno5hp8fS1hefeX+ZPaPjhsfulTfMMCN39RoM+svPSgtLmVkSmS67u+gWQYOP
	GeeKohAMXyx455yqQELVwGasAAmnRmHxUa33M7Se+ym5aFBAto+9G7yimVJOvcw2SPKF
	uYS9v6RZ7VVOW2Ap5OQ9aTrfoYSMKQnH9s2iYjCoYzNZ6GV/LEYF+Pd5BDkXjf2lbhZ0
	coaSG4jXg9BPsnq4lo22sHSLT47g7QChKzGxixBuN+hJMnkJQcUuwkHv78C/DLFmpLyh
	iCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7vGK+LEnPBgLTevQnmBmrM33ER/YvO0RX14hUHJDCa4=;
	b=QfXPCd7bKNhZLTNBhJFPiARbssSrBJgpSxVYorMIYjkMrUE7qV6n3xiDkNylHYjMSk
	gJMfyvb/aIxjKK2DOtskmd9pla9lrkfHUs/gfedSYHkhfTqwiUD7MIn+aIw7ybxNtQ8H
	6y6ywgR5ukrTSFVqlxXaU9E7FZyAkOc2CKeN4Fp5Nsg+fiEGMr5a3ElYJulh0pwdA8vr
	aw1pb4hJv9FIvMrzwSdIop5Gcuf2ecq2vbDE7NKJxMswMe8TzJ7m++PGZ/ZgbnB7Pn4x
	MFvwkq4uOtW1rTpBua6J4qRu0LEMWbVqKIyIMHnOQ4PvJ9yFq+dSquq4jo6hKb0w70WK
	lSZg==
X-Gm-Message-State: APjAAAXZYMNEk9ekts8Fqb7yYss54yyYNcexLGF5nmkpFVVKH399BYot
	HiZ9g3VnB8YIZF27GpOgTu/K+D7Pjto=
X-Google-Smtp-Source: APXvYqwxb9tGn3B3h/DeJNmRFOIACBor16YRAXDZ0uogOz6L8phjUCDKK3PWKyd6QSkJcKPs/LMZTg==
X-Received: by 2002:aed:2b87:: with SMTP id e7mr14137805qtd.336.1569185145990; 
	Sun, 22 Sep 2019 13:45:45 -0700 (PDT)
Received: from xu4.kyle.tk (cpe-2606-A000-111A-A097-0-0-0-F17.dyn6.twc.com.
	[2606:a000:111a:a097::f17]) by smtp.gmail.com with ESMTPSA id
	a190sm4763284qkf.118.2019.09.22.13.45.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 22 Sep 2019 13:45:45 -0700 (PDT)
Subject: Re: current chromium version a dumpster fire!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.21.1909221404340.29542@panix1.panix.com>
Message-ID: <3990292b-2a12-b967-545a-be6e03ec2f6d@gmail.com>
Date: Sun, 22 Sep 2019 16:45:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1909221404340.29542@panix1.panix.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.47]);
	Sun, 22 Sep 2019 20:45:47 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]);
	Sun, 22 Sep 2019 20:45:47 +0000 (UTC) for IP:'209.85.160.173'
	DOMAIN:'mail-qt1-f173.google.com'
	HELO:'mail-qt1-f173.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.160.173 mail-qt1-f173.google.com 209.85.160.173
	mail-qt1-f173.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.47
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]); Sun, 22 Sep 2019 20:46:03 +0000 (UTC)

The best way to change the voice and keymap in Chromium with ChromeVox 
is to press alt+shift+o followed by o. It's counterintuitive to say the 
least, but starting in Afrikans is also counterintuitive ... something 
Google did wrong with their speech-dispatcher support, since it is 
supposed to start with the default voice, not the first available. The 
Afrikans speech even extends to the "ChromeVoc spoken feedback is ready" 
message even after the voice has been changed. In any case, the key 
sequence I mention here always has worked for me, and should still work 
in the latest package, since it is a ChromeVox sequence rather than a 
core key shortcut, and ChromeVox hasn't been changed for Chromium in 
probably the last 3 to 4 years. Hope it helps.

Imetumwa kutoka orodha yangu

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
