Return-Path: <blinux-list+bncBDGI3AUYYYCBBRGY6O6AMGQEK2MJT3I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAD6A23FAA
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 16:29:10 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46796f4d7c8sf31942631cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 07:29:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738337349; cv=pass;
        d=google.com; s=arc-20240605;
        b=YUMFAW8ELYxcGsWQKhpj67xvfj77KDy+zMMguMjB3QCd8vdneY8uhktaqDYCYVzJiE
         PYz1O6TYXeGQEsEVqIkzS9WUEMpwbVAlIE9mXfDQGYDkcKlR2RZ/Q3afR1u9CRwzrbGA
         RQmeKVNH+ZiSLMeV40kFqLmpWd6eMTjJFZKNQV+jK6ReYEi3rnOep4SZRW8jQ7Ec64IA
         /RXVc/31/C2hI9Kaf0wtDEke4sQf9BBMztECKdnUW/4XbZRfii1xVdo0nTG8GIjdmL5Y
         TKR9S1aJXxFllSUgo2ilCbQ+cQISMc9R760Wh3mCm9SvT3ZaP6Ip4o5IbiBOa7M9s9x/
         7oBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=6XYEm2+qzZ/iMHCH/R1vq4rJ5HxQEgKGqodBD+TRk7w=;
        fh=XdDRcqCFwlSZvH8Qulh5UNfnQcGLGICtxeckxHVTyxQ=;
        b=GDkSl0ynX1EYhD3mDDN/MNgJWAYR84Mp2ebGdOF0N6tZcYzQeO8QTtwnOldrk4MhCQ
         O3WQdxWzvucId0W+3DLvTFPUTrojIYyVB4AsPzhRrQ7L4kRJCksn+N3KMEM55jTY3Pen
         COQD/B2NqY2959gpu3rxfekysePH4yjjUZ9k4kFVSB/H6FKyHxlnddQoTDbiwLY/NQ1V
         gB1yluvtCkrEo/+2VxQx7G6iMh5/8qdmhI3fkFlFtK92oo2IjJ3750TrsTEqW6wjRVnH
         z22KMKgxSoEj37jPKezs4fTpLQyDwbuJfW5WEg9Bc4Xx1+LoVN8Gd5DIt6PYe214m7Mv
         MX9Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738337349; x=1738942149;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6XYEm2+qzZ/iMHCH/R1vq4rJ5HxQEgKGqodBD+TRk7w=;
        b=XdxKnLiAHbpmDuNsQI34y64elYLza0eAzHNCliBY4Y5/HqETCm+6269br9GoAWyXSx
         D4Y8nnjrnMPd1TYtyMeRqlJL8h1igCRmYZoOK1cn9ooD+dR1xj+qC9ZDdkdsbleKCZJN
         L5knGsnmvnB4ExqlRCYp+9uVOHjMEDg1MOLdkbQkbLGx8NoMJ2Tvhwh5kt9EvmoSiL4S
         gTbdAMKDrfzRVuc6xxuOyhMWG9j88I72F28/l9YeMaebcnZIwCGfqjl1z1JlKesT79ck
         iGd3HqPBUKI4c4kvm5omz/RcSzPSxPKXbVeCuUjvb0OMvtOtaYqps3+RTl5DLkeK/9H5
         tGOw==
X-Forwarded-Encrypted: i=2; AJvYcCURYtRjX9KgfPGEkHb5UoR4KK/O+dVmGfnmON2WJ3kB+wKsbTmjkKcTB6sBn+EVh9Heb+f2cw==@lfdr.de
X-Gm-Message-State: AOJu0Yyv2Nl/eCj3KqrWcCvVtnuf0iOdH/i1IJhq8qZAaY3G3vASMbNw
	TEaTDXFsRXs7VMVvZDb+mGBpq8oAifRpc/ZjJOcbPG5ylMV9XBicaitqxtddZmw=
X-Google-Smtp-Source: AGHT+IFDl24F+7xJ3Hs9+jq1RqbKW9uVXhjLiQL6wu5bRp3B+CFBV7bxQqwoouI0X846PWaogG5r/w==
X-Received: by 2002:a05:622a:311:b0:463:5cd7:ddd3 with SMTP id d75a77b69052e-46fd0a81363mr187318571cf.11.1738337348711;
        Fri, 31 Jan 2025 07:29:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:40c9:0:b0:466:b34c:880d with SMTP id d75a77b69052e-46fdceb243fls9367041cf.0.-pod-prod-03-us;
 Fri, 31 Jan 2025 07:29:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXv9ZAEY7YqpND0tYKnkPzqH6bEOKuNbYe4946IhqU2vyfoRtr0CQ50JvJNhgeosm1dVsXuCPS2DPvU9w==@gapps.redhat.com
X-Received: by 2002:a05:622a:28e:b0:46c:782f:5f78 with SMTP id d75a77b69052e-46fd0aa24f7mr140012881cf.17.1738337347540;
        Fri, 31 Jan 2025 07:29:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738337347; cv=none;
        d=google.com; s=arc-20240605;
        b=Xz8h/UPEBLBLKylbza9pASCwmQSgWOIVPKeqCTrrMf179d2xY33+VbpaNDwdx/xjX6
         TaS4zYtmmRKj5Oj0VVQMpnJJ3jp6/Y6eAaxnf2QS8byFv0j2ClGDjAHK+TqpctJYR3jC
         t88Ez/GVrbrAgHgbUODvMtTEbmdcU4SI9RIxpNzP9iEbRALEZbMhITNd0rOhlTlEm56g
         XG+dBnCbZxWIOOnF+BOfN2JoiPhLQy2n7P8j2iyhuCjBaO/lPyEvl8LURoPThhMmNfzb
         dfKvgrtHGc8uZjmBAgGqA/f7Dqyx0k6MbUWo0lJMSAxtJQNIDV5pWc0k8s6kU/c74nh+
         TMlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=BnXDFyoMIGxnUwiLtL6dZMXHtmtqfULKvfmXPlzM6QU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=dXCanJ8djR9+4aInS6iIHiOgzc/irmuGiYCsvwMmrruB5abgHo3GMvPqjYFuY9DAu7
         wBrTRBh4p47mwGCaguco6tCOR0oH2yJnSY1TWCixVDUF7LWiPWBUmIpQMElwBFBFwzC0
         e2y+Wa++r70s9jNkRJdcQMjWuNMRzdSTWqKnLMTuHamg395ttq886nIRwSUiBACXghDf
         DzD52HxJIdhNlLNYvcX2+nHAu7kVFHnFMbFYOeX8/IVOMaX0w8bSe1FhkJP722mR2ZZ2
         BdGT6AweCbLhoB/YDhwb09LXRhI2cXaE+crFI5vPmIB7nI27CYZeslxlmOR9d3LehAzb
         aP5w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf0ab6cbsi40315901cf.113.2025.01.31.07.29.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 07:29:07 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-210-fLHKwufqPh6kkmZLsOzVzQ-1; Fri,
 31 Jan 2025 10:29:06 -0500
X-MC-Unique: fLHKwufqPh6kkmZLsOzVzQ-1
X-Mimecast-MFC-AGG-ID: fLHKwufqPh6kkmZLsOzVzQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 56A09180034D
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 15:29:05 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 52131195E3E1; Fri, 31 Jan 2025 15:29:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4F758195E3E0
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 15:29:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BF1EE180034D
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 15:29:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-142-Kyk8cnJtPPGUnuEl0ZbtYg-1; Fri,
 31 Jan 2025 10:29:02 -0500
X-MC-Unique: Kyk8cnJtPPGUnuEl0ZbtYg-1
X-Mimecast-MFC-AGG-ID: Kyk8cnJtPPGUnuEl0ZbtYg
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Yl0DG0lSkz4fM2
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 10:29:02 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4Yl0DG0XZKzfYm; Fri, 31 Jan 2025 10:29:02 -0500 (EST)
Date: Fri, 31 Jan 2025 10:29:02 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: more gui obfuscation
Message-ID: <Z5zsPmVhEhvMGaTL@panix.com>
References: <Z5xIBQ5itO0f071J@panix.com>
 <Pine.LNX.4.64.2501310351040.2129007@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2501310351040.2129007@users.shellworld.net>
X-Mimecast-MFC-PROC-ID: 843yWkshhViyh-XG7r-YuBEFr7Tn2LzgttGEVJawSDo_1738337342
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: oSgh6J1gx9uQ-HYCgCPWlAaHfqLKGm3Apvt-KtSKykc_1738337345
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


Hi Karen,

Yes.

Put the following three lines into a script file, e.g. ytlisten
url=$(cat url.txt)
yt-dlp  -q --no-part --extract-audio --audio-format wav -omyaudio $url  
mplayer myaudio*wav

Make sure to chmod 755 ytlisten, copy your youtube url into url.txt  and run ytlisten.
This creates a wav file and plays it with mplayer


Wav files are big, so if you want to keep the audio around for later, I suggest you convert the wav file to mp3 with lame.
e.g. 
lame -m s myaudio*wav  -o myaudio.mp3
rm myaudio*wav


On Fri, Jan 31, 2025 at 03:54:27AM -0500, Karen Lewellen wrote:
> Hi  Rudy,
> Does that include specific YouTube links?
> For example, I *very* often get a YouTube link sent via a discussion.
> Even better, say I am reading an article at rolling stone, something I can
> do quite well with lynx.  there is a YouTube link in the article, and so
> forth.
> Can you, as you indicate, scrape and play those?
> Thanks,
> Karen
> 
> 
> 

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

