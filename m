Return-Path: <blinux-list+bncBDP7P6HU4IERB5PNV7BQMGQEFCXPOLQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAB1AFB8B1
	for <lists+blinux-list@lfdr.de>; Mon,  7 Jul 2025 18:34:20 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a819c5fe7bsf69190811cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 07 Jul 2025 09:34:20 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751906038; cv=pass;
        d=google.com; s=arc-20240605;
        b=dftV7CZLodQPi/GqcORGOa3gn9pt/dKkpD05wqfjCh0rpLTuYQK9e9TQodgsujGAiI
         HdPFWM0l51hBAkSu91wXlf4TqpIQ6Y3UqdC1yNvogVl8cvZ18FRLtkV9R2OWJfjtoleA
         yQqpLhFVGkPiYaceB/e62uq5TW+tc9WzgBggMKiwGwCeC54KwNU4UYTNSTP9M1drlE6M
         G+iLE+ETYkAwW7RjzY9O3GsWuVevOVw7TkXv8PtQql0Whg3WfBoYtShlahnpvPIgiexr
         /vnluDOuC43Dz0R3DbkpHyoMtdDyExwRbONxJk+NNOYFncGHLjZUIE/e4Od7DE00tR/z
         +9dw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:message-id:subject:from:to:date
         :delivered-to:mime-version;
        bh=Hel2mT5KMavD1COAM05KvdhTPqF3I0LUxyByyZl6I/M=;
        fh=J99/hCSLkFDb5HzXAc7RVTZo97mU3wY3hWgSB38FUeI=;
        b=H3g8srOb0vTYKr5edcic+dVGKI4SmQwFbMWNG/evFD+ORhwWqp/gRlpYofSgQRTz4g
         QQqEYq7WkWEuhHIBYdAW0aUh48stoCrgHbWvi07V4JKbDB2PgRWBG3Unfws2uqhsSD2n
         Y5yCywifu+O4rZTyLBRlYy8kjFplA3mbIRXa3bYnt7K18hMw2gRUzJ3dZoZEE4iXdpfR
         FJPqE0Er0Xsh2anLPLpn75HMq3wNSA3hPSBlKFcijAdqBjIV0AyESszVyOn8GdfzypyU
         KupjGueRigucXgZvz63FN33JMMW0h6c9opQjFGvY++NS6+8ycsC1BBVOhazd04ivNoHR
         dLig==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@suddenlink.net header.s=dkim-001 header.b=jYqCXIK9;
       arc=pass (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net dmarc=pass fromdomain=suddenlink.net);
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.137 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751906038; x=1752510838;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :subject:from:to:date:delivered-to:x-beenthere:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hel2mT5KMavD1COAM05KvdhTPqF3I0LUxyByyZl6I/M=;
        b=HlvlvR5cXSZt/eWv9f7FOz5f5VAGfc5X9INY8OWmHIHQ2uWDQd7JcsbNSWwBpnFUbL
         IulVFS6NEzzBE3wm8wQ6lcabBQ51fDMkKdJBfqHJKdDI7hbPuMaYoE68y8eoHXLv+6K9
         IRCvfT8psGeZR+Ehn+/UYLLy5La7bCMMN5ULy/MHzO/QFxn2Z37d3nYScvBlzZPmdEKv
         csfUNe4ZEUxdIJc4ogbt/ekXYNJWBKkoyOIVBjdp1Rp0DVF1CG7IrvC4Yd58DRqndJZ2
         HFnu2mRrN3jVapEf5wK6MA9L/8oHJHQwYemNb2kCi3uPd2U+4E41jAHk7wKFhCQKiGAN
         bMdw==
X-Forwarded-Encrypted: i=3; AJvYcCVfMjc00Kw0J4yBAqaQYxQQ8OKwVS00dVRjCMXNzfY9CZHEXnGY9hszeAI6Njiub5tGg6HV5w==@lfdr.de
X-Gm-Message-State: AOJu0YwPKJtFAUth23AgILoil6DYl9g1HjijFgjXe5US6yTkH8PK/uvg
	TGlL2Y0IRw3aTqGVmRd2JJCD2uY22JT+bYeH4HU0wbt9m5egDbcSuKKPoYssHIdm9Wo=
X-Google-Smtp-Source: AGHT+IGSHyHdAwuZ/xa/4o1hGdllUuszp9dMEs6f+CyV51UQ4qPmXtL8xgsg5w0lmhjhr8o3K4OeVA==
X-Received: by 2002:a05:622a:580e:b0:4a9:7009:20ef with SMTP id d75a77b69052e-4a9a692cd59mr141176261cf.31.1751906037809;
        Mon, 07 Jul 2025 09:33:57 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcaFPZnupwN375kOnnY2/9wtEu6qhTouuqLVY4w38hd/g==
Received: by 2002:a05:622a:3ce:b0:4a5:a87e:51c1 with SMTP id
 d75a77b69052e-4a99be4d80dls55690511cf.1.-pod-prod-03-us; Mon, 07 Jul 2025
 09:33:56 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVAKyztCpHbL/D18iwY0KiL6W7M03ubek/7Ev1K17FoMHS/s8Dd4PJ1nUmZjdphGpALFrvTvnHlrIoBEA==@gapps.redhat.com
X-Received: by 2002:a05:620a:1a02:b0:7d4:3ca1:603b with SMTP id af79cd13be357-7d9e9ca86e1mr7511585a.21.1751906036593;
        Mon, 07 Jul 2025 09:33:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751906036; cv=pass;
        d=google.com; s=arc-20240605;
        b=cB0+VpYUUTRxcxSoFeW49eUvvGaxc4MR8DQdy+nHEw4ZSkN6Ve5PQ5b2ptyvkvURVk
         nqiANPq7Vkf6HIb5vZdIaMjfPSPvS0ZtLB141HrOhDUVAGFTOisszpHhHe2utb2rF08D
         dnNvol7Mj5XFHu+8VFCQ6oa4AcnESfg/3rE0j8bnCUMTq66daRIeOtltfQobtPH8v8kT
         yHEF95t40xo7bVwqscBZrdacnSaLhbnxY/6CxjwxfdcCoI07xzo7OOzOfzf1q+TzNJ9n
         eWe+zNxVjEzUh4onzU/lD9lh5vIXgkJsvXm8P/XUFvdrdrw1dNFHzx2I9i8DP/vciJa5
         LA1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=message-id:subject:from:to:date:dkim-signature:delivered-to;
        bh=6ltNOirqbIlUaOvSMrFVBuIiELdgURnsVA35Og9BcjY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=k9fu2o6FjqbQU5sqnmtWPKpC14ma+M8y91xX4SNewGBmOq2rVj1f053/BkpM9Z01C4
         X93qiy47LnApWORcG5JS7u8GaBQSJG7KNC0SSx69lE15PrpJdaF2BKIxN93eU55kAFB/
         JKTpQHB6SBMwJN2d0g4efBjuZXyrrMb0m89LFbtQ5oKCcvSyM4v7We2Vr/7sMpxfZwQH
         bFkRmWbR9xGZHg9qzlICb6iefKSNdpSkTK7DdEyLv872sOI7AGxR4ePs+5RpZUJ6g1xI
         JaEnZTyhxZJj0hqkKmbfLbhWxM1OT9sAN3c5qV37z2A4rdNrpC1SwIOlhW+XQObQW8RA
         AA0A==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suddenlink.net header.s=dkim-001 header.b=jYqCXIK9;
       arc=pass (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net dmarc=pass fromdomain=suddenlink.net);
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.137 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d5dbdca001si816555885a.25.2025.07.07.09.33.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 09:33:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.137 as permitted sender) client-ip=66.179.105.137;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-193-7HjzdawDMPC1pdEAmeQBvg-1; Mon,
 07 Jul 2025 12:33:55 -0400
X-MC-Unique: 7HjzdawDMPC1pdEAmeQBvg-1
X-Mimecast-MFC-AGG-ID: 7HjzdawDMPC1pdEAmeQBvg_1751906034
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 79B861978F61
	for <blinux-list@gapps.redhat.com>; Mon,  7 Jul 2025 16:33:54 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 73C83195E74A; Mon,  7 Jul 2025 16:33:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 70F5719560AD
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 16:33:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 92ECD18002E4
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 16:33:53 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751906032;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:dkim-signature;
	bh=6ltNOirqbIlUaOvSMrFVBuIiELdgURnsVA35Og9BcjY=;
	b=XBrdprFrZMcWd5k17GDMhEOSV6CA27kXVwcLoLDhbip6+oakln7CkltWBrG0BuxugcgZHy
	zjzTJ3+RCxsA59xIgUDDKjopJMJ6hTq+/HT9gy+Fiqqz5LxYaAVIAU5+vMIFEBZaQdsMbb
	V+ZV+HoDSZWQeKKHFvzLF0eerBoYlwbo6jnhNy5f2KsRIpS2mMjicnzrgqr7CWMgaZLQNB
	ZU8g15BUoXCg6bR/gUMiZnNq/26mA98ZWuCviZH2fxj/Ev7IRC0/E8Njd+fPXfQLYLtDwQ
	kqeXRzFn0qqAafzaiyNF2GKlUM8kkVzkXCpATeZTgUY0CJ6fmkcEFoCbaL1Idg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751906032; a=rsa-sha256;
	cv=none;
	b=Q6KSRv4IrP1YbDquU6nlouF1+jdFBmftaMDGHdkdPIRclfnqMBTVQmgLvl62dH450SM6Jz
	bK/pc3PdOWTLhNammx0TDNN2yx878KunvKktaFyoAz8DkT/LHR1Uzcm0Y5lpWGT4YUMwdz
	gL42ccpAueUyyIgh1Fv5PfLCS1mEilTVvlM7TFdIPFx7G5N/Be9cSSzw7k7c3ED2pExovR
	PBDRiYDakD2CYvvsWKkmpUP7Fu1vV8dI+MmtWrHF5kfg9yjIstXhyeRnFiU4kf/+LqtYjE
	GkBeMMrEOOhEUVyU/PVfbjz5wjneYBjvlm/svkO7f7bqexKd0NvAkeFLjId4lw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=suddenlink.net header.s=dkim-001 header.b=jYqCXIK9;
	dmarc=pass (policy=none) header.from=suddenlink.net;
	spf=pass (relay.mimecast.com: domain of martin.m@suddenlink.net designates 66.179.105.137 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from altprdrgo006.altice.prod.cloud.openwave.ai
 (altprdrgo006.altice.prod.cloud.openwave.ai [66.179.105.137]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-677-VhUvHNpMO5uSvKb-ZeKkGw-1; Mon,
 07 Jul 2025 12:33:51 -0400
X-MC-Unique: VhUvHNpMO5uSvKb-ZeKkGw-1
X-Mimecast-MFC-AGG-ID: VhUvHNpMO5uSvKb-ZeKkGw_1751906031
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 685BC333027F35AC
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdefvddvlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpeffvffhuffkofestddtredtredttdenucfhrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthenucggtffrrghtthgvrhhnpefhueeikeegvddvueejheeitedttddtffeuleejgfehvdehkeeivdeghfetkedujeenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidrlhgrnhdpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddtiedpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz.lan (47.217.105.81) by altprdrgo006.altice.prod.cloud.openwave.ai (authenticated as martin.m@suddenlink.net)
        id 685BC333027F35AC for blinux-list@redhat.com; Mon, 7 Jul 2025 12:32:25 -0400
Date: Mon, 07 Jul 2025 11:32:19 -0500
To: blinux-list@redhat.com
From: martin.m@suddenlink.net
Subject: Firefox Talking Book Downloads
Message-Id: <20250707113219.039745@wb5agz.lan>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ByEXiUttcA3yCu9HZy-CDPUfCrp6MLc5DDEomyQXWGg_1751906031
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
content-type: text/plain; charset="UTF-8"; x-default=true
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suddenlink.net header.s=dkim-001 header.b=jYqCXIK9;       arc=pass
 (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net
 dmarc=pass fromdomain=suddenlink.net);       spf=pass (google.com: domain of
 martin.m@suddenlink.net designates 66.179.105.137 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

This message applies only to those who use the US Library of
Congress Talking Book program so others can skip it if they like.

	The bard web site has a wishlist link to let one download
books and magazines they like to read and I use that link all the
time.  The site presents you with a list of all the periodicals
one is subscribed to so they can be downloaded for reading.
Things go really well until after the periodical is downloaded
and one wants to go back in and download the next one.  I feel
like I am missing something obvious.  When the download finishes,
what I would like to be able to do is just move on to the next
item to download and download it.  The dream scenario would be to
start a loop, sit back and just inhale every item until it is
done but failing that, is there a quicker way to move on to the
next item?

	What happens in firefox is that you tab or arrow to the
download link, press Enter and it downloads.  So far, perfect.
When the download finishes, though, one is stuck in a loop of 3
or 4 links, none of which are terribly useful except possibly to
let a reader read a list of all the articles in the magazine that
they are about to read or re-download a second copy of the same
periodical.  That is all to easy to do because one's sense of
optimism may convince you that you are just downloading the next
thing on the list since that makes sense and re-downloading what
you just downloaded only makes sense if you think there is
something wrong with what you just got.

	Of course, in GUI world the most aggravating thing is
always the easiest thing that happens.  If you don't stop right there and
erase that duplicate file, you'll get two copies of the same periodical
which just wastes drive space.

	The most sense would be to hit some key and be back at
all the links ready to get the next item.

	At one time, I thought I had stumbled on to the go back
one level key when I hit escape.  That seems to do something but
not the same thing every time.  Alt-F4 just dumps you out and
closes all windows but on rare occasions it also has appeared to
just close that tight loop of 4 unneeded links.  It's possible I
was accidentally logged in to the bard site twice and maybe what I really did
was kill off Instance 2 which left Instance 1 still open.

	I love the command line and tolerate the GUI the same
way one tolerates the drunk relative who shows up at Christmas time
and sometimes amuses everybody but mostly is a pain to be around.

	An acceptable work-around on the bard site would be to
somehow mark where you are when at the wishlist link selection
screen, do the download, and then jump back to that screen again
to do the next download.

	All constructive suggestions are appreciated.

Martin McCormick


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

