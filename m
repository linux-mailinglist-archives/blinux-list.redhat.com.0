Return-Path: <blinux-list+bncBDGI3AUYYYCBBD5KWDBQMGQEPGB4W7Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D47AFBAF3
	for <lists+blinux-list@lfdr.de>; Mon,  7 Jul 2025 20:42:25 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7ceb5b5140esf481744585a.2
        for <lists+blinux-list@lfdr.de>; Mon, 07 Jul 2025 11:42:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751913744; cv=pass;
        d=google.com; s=arc-20240605;
        b=HcOgRzDWKUixUGc2yGCBo5IdxqWCsgcQmoGZSASKwzJBZUZrVQsem83Od86Pxnsu4j
         Xtrou7pZAXaXnuBAQitxJlYaHvp3rvUihXDgQy1wMBFqZFCAIXxkt/+e5eEUvdkVxQGa
         y4DBBd7gBfhF7+IQpiMHStjlzK7YTeu8Vdu2+KS88Uh1yLgTSKr9+AI1ONSfH0FCx4Cw
         kCIgTwqbUiq98wA4HTN1tEv6D4GcM7oraa6Aft0C/HaD7atNNcLrBridcygCp8sX5f4o
         1CteSHmxPTyXqTNLENOWJE1oIokgHJOt73CNDNXLXWz5nVxRF5fUSfmum450UZh8KBkt
         k0nA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=v9yBKaKQsxkXsI7t3cXmCtUzhhI77MIUHj4FgheeBuI=;
        fh=WmLMMkb0x2bzQmrC7rejr0p29yD8/WHsuOQZxnO6UcI=;
        b=jZ3R+DbDqvkPW9WATXhASGmqmaLPXISREDwfSWMLPGUF/8nGwytOjj9SJ01W2hjXVq
         UkmG3ZC43T+rogOzjDDclWkoALF4Qg7SaLBDta7LvApQIien0hU7D6MZpvZKZZqoaKCC
         XuUPkFp0YHqEQfvSRzTGSr1eJS1jfjbDntTfqA5X7AJVzG0+iOfnIkzB67augk8nj+L7
         5u6NX4QUsRaHaL7nSkUcB5H69oiHICEqGGw12QL1IsNmcq4MP7S5ErRLowTnRuVVBgjT
         V2SLNYVt72dU1HUpAlJNoVW9YtC/RtAxqaU6hmlvayMCGJARCqCyOoJ5Znazr/mvaPVD
         fdew==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=PHMb4OjQ;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751913744; x=1752518544;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v9yBKaKQsxkXsI7t3cXmCtUzhhI77MIUHj4FgheeBuI=;
        b=KA6DHgsgIoEa2/6b8mmho6MeEE5zfZWV6c9F1FbP4W8LeUDY/Hu7PWGCrl+4fiRU6T
         7q/QIH21NfmfioHH56NcG+ffj5C0UKArZ83teTYS8jTr9Um5/k1F8iGYKk258SiL7uSN
         zX//LzpJMjYldWh63BmjtqijM0eUTujBk7KreKQB2JntPqSu49ab57zo1OMRuF+erDC7
         7WpchPgp+J+Va0CNLN6bCxd/GGv5acD5RrRN+vErtPYzJGtKJ8i4ezWQCpBvy6QXQ8nO
         VzRuhzAaycjJ9Kr/dMVKNaD/csr4/pb2SgBDgTh7XOmMpwG+DNqPs7Bj+vHuzuaZwGw3
         blsQ==
X-Forwarded-Encrypted: i=3; AJvYcCVQuPQdgYLMrwAsx6O9J5HBNE6+GSHKB0VR/BAxDlaxRjrOuk+sfx69KLaqJ2qnmVsqibAebQ==@lfdr.de
X-Gm-Message-State: AOJu0YzV3i+fQkt96Xdq0k3qZsjZQs/vfJ/sE4VX0ZAuqFfPN+4jJS3o
	VhnxokFuU4U087OZYjrEQOOq2DeEAFpOd+BfVC8ZOwq392Si5iLZCjGADQXRt1omlCo=
X-Google-Smtp-Source: AGHT+IE49MKugzDv7TVv0+eGw+paRcVUzxYcsbTe3V+b2saAep+2IH1jggu8xTmKwGWlmnQzqH2Svw==
X-Received: by 2002:a05:620a:2901:b0:7cd:1f2e:dadd with SMTP id af79cd13be357-7da04327eaamr13769585a.55.1751913743550;
        Mon, 07 Jul 2025 11:42:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZedUbeV5CNKvGJbjsuIx5iWUcxcyHOccUGiLEIuNcyUvA==
Received: by 2002:a05:622a:1183:b0:4a4:30ed:7f28 with SMTP id
 d75a77b69052e-4a99bc57d44ls46272841cf.0.-pod-prod-02-us; Mon, 07 Jul 2025
 11:42:22 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX6IrX0uG7wFZ0oWy6zCYXKx/C/nGwBgpGWZEoPf0mcCOnAAzJZf6L2/xnQ2On3380L9Z3cETqesSyTaQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:30f:b0:4a9:c8cf:3cbb with SMTP id d75a77b69052e-4a9cca8a98fmr4174191cf.9.1751913742382;
        Mon, 07 Jul 2025 11:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751913742; cv=pass;
        d=google.com; s=arc-20240605;
        b=IpcrMUopca2H0QB40P/qBpO91qLEVDYA7thA+tgiTftLA4Nc9NEFMaf40IevCinP8F
         BvLhhixeo5LV7AxbsOXtplaF3fIrZnZTlwsEO77TgT4blSCN9xXnC71/fbZwAKxuIY1h
         jJLMGlKkoqWZgVqKMr9Zt43N3ncwP82CewSSoRzfNP75fSS/b+iKGKYowbKuBChxhLhn
         ViKXzw22+6MYtxrZf0yduCFKr+eqIOwhkHWt8/mQQLra8jOWic+5VtVB+kWZcPvfJs3M
         NF36ZoDnpsDZFE7d9zOJWM6n3ciAWcuaj+6SwukO74ke47qjPusBoYTpsjPH/vzMYw+Y
         gsaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:dkim-signature:delivered-to;
        bh=rGPH3O2Bmx9UvEy/CZtFSGp5xnBM+MlQRwvyoMzURcI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=At3PqBsW5hHJIZIt3PerwgVlzd+SvVj9hCV3C8Kqo0ZTUhS9pEuhG+jDF17ihttJcA
         pvmuZNX11PTMg18eU4lVs9IKWE5pcaTuFOe+8FkHScu1TotcERmyGaqS677WVPn11kRs
         aCoF+j9zgIYsu+lURu5FsyysqaajmzpeYHJoKsIs8nOUZ1PxB4iTUfjPs1qXZkVJgm9u
         q1wzbclUsVhewMIkB+ha6ABNy21hteqBK3s4+fEYt5sFcpwSPLAt8tcQ/FGN2Z/tkZK1
         3aOfX49KXN7Y6/rDxqW2cBpMnbBh93nLbzDEZ/FBorwQwtKfM+SQ0e88FIs+WonDlDl9
         U8Ag==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=PHMb4OjQ;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a994af794csi82200311cf.529.2025.07.07.11.42.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 11:42:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-570-8_xFm5InOtShm6vgc24G_g-1; Mon,
 07 Jul 2025 14:42:20 -0400
X-MC-Unique: 8_xFm5InOtShm6vgc24G_g-1
X-Mimecast-MFC-AGG-ID: 8_xFm5InOtShm6vgc24G_g_1751913740
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 23C5419560BE
	for <blinux-list@gapps.redhat.com>; Mon,  7 Jul 2025 18:42:20 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1DFDD1803AF2; Mon,  7 Jul 2025 18:42:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1AEA118002B6
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 18:42:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AA64118DA5C2
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 18:42:19 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751913738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rGPH3O2Bmx9UvEy/CZtFSGp5xnBM+MlQRwvyoMzURcI=;
	b=ioGUQ7nldN3OsXdUwVHeW+62/+hp4stgNGMQJmUmrIizpi6eFsbIZzE5vHyc4NJ+OOlwbh
	gBjAqqxj3KijWrixHPF6+P2mpH30/TtgOEsAC9mk+HuIGo5cOKo21N2jduYK2/+uxwbcGc
	4unKspk8W1nj3sHctkHIUxsF7PXiIR/gyg4woQNWhlWV7y9NrpNLtOuUYlYnanu/LHc+99
	/NDjubtPFV0g2WEkaYvSqS8z6C0IYQo2k+C83aG1wDYTH/gIODbHoQSFpqdFiAhADcxaI8
	jEe3rdIkpwr2abwA4ev2M21ZemuM8QzCNw3rnqsXuJmcqBMsYnG2PHRhkqMIgg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751913738; a=rsa-sha256;
	cv=none;
	b=NFgsy3TG1vfcZiI5sMCGIlyNGqqoheSNsV+N1duK210Bp/dTeJFdvrHzqoSe6Ij1DFECy0
	v2UEesFI3ZTcJXVEWPoatPnjAeGxHEronWg1tKOb7poweRs0n5nYM48BhrrMorZq8/Gj9P
	+LZC1UquWnXWONKH77RUSkE7JAmAFCMYToOjcyDC6ZTvKxflKzmD/TJ4vXrm7+Pf9cU2aM
	ZsLbkiqF5pStI27kEV44NOq+lhNgdeQwEPbDrPsbJleQij1yCrriWrT/JZLM444DvFqc4d
	mCHvvfzUISqmdm3v8YiUnSqyT2KHlt8KQPZDHCwrKyRdG3XCpM6c8vl+g8B15A==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b=PHMb4OjQ;
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-110-Y2MAEbFhMoiM_NaNnZf3Iw-1; Mon,
 07 Jul 2025 14:42:17 -0400
X-MC-Unique: Y2MAEbFhMoiM_NaNnZf3Iw-1
X-Mimecast-MFC-AGG-ID: Y2MAEbFhMoiM_NaNnZf3Iw_1751913737
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4bbY4n1kLgz4HTf
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 14:42:17 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4bbY4n1djkz1QXM; Mon,  7 Jul 2025 14:42:17 -0400 (EDT)
Date: Mon, 7 Jul 2025 14:42:17 -0400
From: Rudy Vener <salt@panix.com>
To: blinux-list@redhat.com
Subject: Re: Firefox Talking Book Downloads
Message-ID: <aGwVCQ1QYN2uDHwu@panix.com>
References: <20250707113219.039745@wb5agz.lan>
MIME-Version: 1.0
In-Reply-To: <20250707113219.039745@wb5agz.lan>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: q4zU2L9wFxCcY3qAmWW__z2EawrMjLeNEKN5plBh_VI_1751913737
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b=PHMb4OjQ;       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of salt@panix.com
 designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

I can't help you with Firefox, but I can suggest an easier alternative. Use the Lynx browser.
With Lynx, once you finish a download, all you have to do is hit the left arrow key
to return to the previous web page. (Or use the h key if lynx is
configured to use vikeys).
Once your cursor is sitting on the book or magazine's download link again, just
tab down (or j key with vikeys) to get to the next document and hit return on your next download selection.
During the lynx download process, you'll have the opportunity to rename
the save file from the esoteric default name to something like short.zip.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Orcas Do It With Tongue https://limerickdude.substack.com/p/orcas-do-it-with-tongue
Website: http://www.rudyvener.com



On Mon, Jul 07, 2025 at 11:32:19AM -0500, martin.m@suddenlink.net wrote:
> This message applies only to those who use the US Library of
> Congress Talking Book program so others can skip it if they like.
> 
> 	The bard web site has a wishlist link to let one download
> books and magazines they like to read and I use that link all the
> time.  The site presents you with a list of all the periodicals
> one is subscribed to so they can be downloaded for reading.
> Things go really well until after the periodical is downloaded
> and one wants to go back in and download the next one.  I feel
> like I am missing something obvious.  When the download finishes,
> what I would like to be able to do is just move on to the next
> item to download and download it.  The dream scenario would be to
> start a loop, sit back and just inhale every item until it is
> done but failing that, is there a quicker way to move on to the
> next item?
> 
> 	What happens in firefox is that you tab or arrow to the
> download link, press Enter and it downloads.  So far, perfect.
> When the download finishes, though, one is stuck in a loop of 3
> or 4 links, none of which are terribly useful except possibly to
> let a reader read a list of all the articles in the magazine that
> they are about to read or re-download a second copy of the same
> periodical.  That is all to easy to do because one's sense of
> optimism may convince you that you are just downloading the next
> thing on the list since that makes sense and re-downloading what
> you just downloaded only makes sense if you think there is
> something wrong with what you just got.
> 
> 	Of course, in GUI world the most aggravating thing is
> always the easiest thing that happens.  If you don't stop right there and
> erase that duplicate file, you'll get two copies of the same periodical
> which just wastes drive space.
> 
> 	The most sense would be to hit some key and be back at
> all the links ready to get the next item.
> 
> 	At one time, I thought I had stumbled on to the go back
> one level key when I hit escape.  That seems to do something but
> not the same thing every time.  Alt-F4 just dumps you out and
> closes all windows but on rare occasions it also has appeared to
> just close that tight loop of 4 unneeded links.  It's possible I
> was accidentally logged in to the bard site twice and maybe what I really did
> was kill off Instance 2 which left Instance 1 still open.
> 
> 	I love the command line and tolerate the GUI the same
> way one tolerates the drunk relative who shows up at Christmas time
> and sometimes amuses everybody but mostly is a pain to be around.
> 
> 	An acceptable work-around on the bard site would be to
> somehow mark where you are when at the wishlist link selection
> screen, do the download, and then jump back to that screen again
> to do the next download.
> 
> 	All constructive suggestions are appreciated.
> 
> Martin McCormick
> 
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

