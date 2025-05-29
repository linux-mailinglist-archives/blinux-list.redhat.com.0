Return-Path: <blinux-list+bncBDGI3AUYYYCBB4GH33AQMGQETRCDPBY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 349A1AC74C4
	for <lists+blinux-list@lfdr.de>; Thu, 29 May 2025 02:01:54 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4766afee192sf9524381cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 28 May 2025 17:01:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748476913; cv=pass;
        d=google.com; s=arc-20240605;
        b=lUh6kffrayYFuKGHeY9eCCzIIt3rj7qWaOAmiwiZJ/aiS5fFeVz60jPgSczmrs6yWT
         UqOx+v9QH3hL3Sd1sFkaVY3MNGPlKu5CViw9PgUWa9H864ONFfRJ2YAyhqw2IQt7p88y
         7KgYiZLEVLOUHwA8zRMt2svm6HLQCXUQNCSU48Wj0YOhTETahvr4Wi7ZmBl3KXqZHHRM
         22saQKYZhhvl5Kqc78QVxj1LG7BDcRl+sKgteIzijfJmSNbd3QZO2L23LpdJEu5I6rpK
         Ifsl4omZfdB6DN/PhoWphOUzw7GC3nEW2CnxZuGVKC6wcBCLzuuHZH/msWNyKEhLivoT
         GgAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=8IGkC6lOGNpOdd4E6EFigesTbSwqlryGy6lk6ZhfPII=;
        fh=G5lS50kcV12aAzD0QgpnSSy6AK7QEvIU5qqXB5klZak=;
        b=Ef1R63v1WfJpbkBFOGPfnML3r4hOtcXEByUEOjwzbOgIAl97s1nwMkPn+/ynmt2WFu
         nY7JUO3YbjyAJYAZEgH6DLDQE33s4kyVqVOoH9RuOoPrVMMqpYGYqBI2HnJctRH5BeWf
         vKrAsHO4XLp8BjhDTRKI2sNYhn/XnmGJg3vle8PGmzvZIf1hvBLbMDeX11KD+iOslc6Y
         hWhfcJvEt3kBZgwHIpassiAP20ktUzvrWAaP8jT5auDOXbuDPjuIW4jPg+KHKxvkYNRQ
         PrWYESXEHmhhdbXiAqvyzO2iL72rm/g0w0IEzpWeSVD0/DbyyGJPzUyL/dOriLwfyR4u
         ylbw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748476913; x=1749081713;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8IGkC6lOGNpOdd4E6EFigesTbSwqlryGy6lk6ZhfPII=;
        b=wLLWDTTq8c5ZrDUPRhhDMS7MwX+6CcRb8ctPVU9Js5cGFmQ1z/jA2pYugqzaH5Va9q
         lSTuJ9IZnbyZPPwAq+xp9v/5+GXD3EJcI4ZIJU4m0gnBRcLkSZbKhYRXGqjz5bvZ8AZF
         eYHNw7HhjU7h1vhnAlxUtQT8eTlmc+e/ABPPF5gLN8y/1d1vLUkyN442TLKmXrFPyM6c
         QzEq1WxG4Vm4/ZGcKWAG+Ep/ajBnuAaAuAjm2rL8hXHjtXg4bpOtehCMv2UwjOH78BWz
         qngG1uR91yCc2OZWUhnYDRGPlbUnojjMj5P2NrdUv8PGda1D7SoULKKWaItQUvFwfvXV
         uGwQ==
X-Forwarded-Encrypted: i=2; AJvYcCVVVrTIG98z7egO69b3xadQ+EIKvG3HiGu2KL/anoRODDI6UubOwWvye1NQxd3Gj+sWIR6Xfg==@lfdr.de
X-Gm-Message-State: AOJu0Yw35b/LIfUoR0uoBlbc2z9cpKdqL3rEH74Nb4xqIM4Fy/0eqKX+
	14/2b/kJPweCkNZFQAZnW+Sak5PjB0iZ+ikJcAD8GUsZ7OaHz3IkT6BAzyXMrS+jNs8=
X-Google-Smtp-Source: AGHT+IEEizLKpGyBbEB9r1ugIOJTvxqjEdaKCNgu1QSWPugjmNtABsa/Z6ECS0gqunK+VZ+NQiW17A==
X-Received: by 2002:a05:622a:a1b:b0:476:add4:d2cf with SMTP id d75a77b69052e-49f4655c4camr317023121cf.16.1748476912925;
        Wed, 28 May 2025 17:01:52 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfNA+qUuImcLoS8GGBLaVECOWX12X4O58Z99P/l+04GWg==
Received: by 2002:ac8:51d3:0:b0:476:7e35:1cd5 with SMTP id d75a77b69052e-4a4322ea00dls7596481cf.0.-pod-prod-04-us;
 Wed, 28 May 2025 17:01:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVM5Xjd7kokPTXBbAc4vR07eJKOCULq1isqMaysbCFgO9dQkbglXRzNjvnzltq/HeZHKGAJyNUXnL6BIg==@gapps.redhat.com
X-Received: by 2002:a05:622a:5c1b:b0:494:7aac:58f0 with SMTP id d75a77b69052e-49f47a093aamr285515181cf.36.1748476911871;
        Wed, 28 May 2025 17:01:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748476911; cv=none;
        d=google.com; s=arc-20240605;
        b=K7C6/Gu64VT6heluA3YfcoK9umr0hsx8KHvG5iG8Xt8RyPmUjgAp6hkk+1V4teg2Ph
         xHqkvFIIir4vj13rwJAuBs5aJqIT3pMl8vbu76YOfTKSLD3CHcysCSG47/36t3GVFhEx
         w0bsPB+syWGjSIl0YZwpMWgta8PQumRhqpbA5IvRlAQ4yz7fmVX+yq4+p63Nc6k284i/
         DQ+srwpg0za1X/WPN1eHEyY6Q2bU55PQAkCiwCiSWrc2zd0E3CGrmszh0BWkRO8JZMCK
         +Na3/Uy6EbA06IekJZVvDQuOexqi0PY4W+/w5E1QykR5uQmObk6zeqjwqwTq6MeiOqFF
         xu3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=kjDZ1lZ5FuP75jOWRtIsIm4a+iA+xg6y3Cze21PhJas=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=XYEcq03YYqhR2TmYbpoAN9UoVUha0mXUI/TGD83EpG2qqHZ8K9/Ixf7PeXojV6h7LF
         CpBm0SeVb4ie6AhQwzVf7Qz/qNv8Mmh5E7cp7NObTB3MkRWoj9ad3+WIbvmTP0eXN4ys
         7RxfWYyIh6ajH/0MhFzd4FDheXnr7cUOmGdMXWVtkrSGmMvcX3fMMHaCuiuNUJwEjAtd
         x21pnfZ2yYiRVQWn64qsXe22y+dyFHq04WxIyxwDSPPo/cpj7FZ+F4nZWpr1W5OoyLKy
         n1f7TzoAEdxTWiCi4YdMrdd6ro2ySsCKBFpH0gjoD5/cKRES1UyieG0uuyWLpfVpjt4S
         k1aA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a435880edbsi2662851cf.75.2025.05.28.17.01.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 17:01:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-537-HjTwBiXHMO-es5Zc78LfaA-1; Wed,
 28 May 2025 20:01:50 -0400
X-MC-Unique: HjTwBiXHMO-es5Zc78LfaA-1
X-Mimecast-MFC-AGG-ID: HjTwBiXHMO-es5Zc78LfaA_1748476908
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 78B4F195608A
	for <blinux-list@gapps.redhat.com>; Thu, 29 May 2025 00:01:48 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7386A1944B31; Thu, 29 May 2025 00:01:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 70DCF19560AA
	for <blinux-list@redhat.com>; Thu, 29 May 2025 00:01:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 11BF5195608D
	for <blinux-list@redhat.com>; Thu, 29 May 2025 00:01:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-516-ultVi8B1MrGySMPEVtN-RQ-1; Wed,
 28 May 2025 20:01:41 -0400
X-MC-Unique: ultVi8B1MrGySMPEVtN-RQ-1
X-Mimecast-MFC-AGG-ID: ultVi8B1MrGySMPEVtN-RQ_1748476901
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4b763n0Hfcz4vgk
	for <blinux-list@redhat.com>; Wed, 28 May 2025 20:01:41 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4b763n04jPzfYm; Wed, 28 May 2025 20:01:40 -0400 (EDT)
Date: Wed, 28 May 2025 20:01:40 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: pi 400 and orca
Message-ID: <aDej5D34WnYtQ8DE@panix.com>
References: <66E77BE5-B80F-40CF-ACEC-4543D71E4256@gmail.com>
MIME-Version: 1.0
In-Reply-To: <66E77BE5-B80F-40CF-ACEC-4543D71E4256@gmail.com>
X-Mimecast-MFC-PROC-ID: RJWrpZiexK5GQDJ6dqSznktS6gdrjxDyCTUwtt8brsM_1748476901
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ckJiA3VdAuQ4ni-In_pGBjF6j-74CnbxMWOUH55Gtf4_1748476908
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

You can use  a monitor dummy plug to spoof the system. I think they cost 75 cents on Amazon.
Look up headless systems, dummy monitor plugs, or virtual monitor display emulators.
Make sure you get the right plug for your hardware.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - All HAL the new AI https://limerickdude.substack.com/p/all-hal-the-new-ai
Website: http://www.rudyvener.com



On Wed, May 28, 2025 at 05:52:51PM -0500, Daniel Crone wrote:
> With fedora or ubuntu on a pc, the system needs a monitor, even though I have no need of one.
> If using a pi 400 must a monitor be connected for any operating system to work with it?
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

