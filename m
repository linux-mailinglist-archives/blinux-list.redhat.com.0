Return-Path: <blinux-list+bncBCVPTHE7K4IMNCXVXQDBUBDV72CYG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB17A244FC
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 22:48:56 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679becb47esf59754871cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 13:48:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738360135; cv=pass;
        d=google.com; s=arc-20240605;
        b=OC/XVtcyAoQV1bqi0iyjDGZbY67kJSPfJEI0OSQ5UwH8mYGnTpHoJjaQIQXYWob6yJ
         U5Gt4kIWLWCSRKIeqJo0NrxKJu7YurzRd1t+GbmqQugkwMu+sxl80ci0orQtPNF9jMdw
         ODtAz/QpK70MOx8MM6JPcoze2zeedBO9KZq0RNDkcJF6KylV6xqckD+Q68OnZUuKUHe4
         RDdzJaVcwHCAq/s+wnxiHuPOqMOs68cmDJL81BMYoKnKZJtIgkwSpkwEfmm+Ugo5gaRy
         VvQt2Zxnno0wO6fnh8owvQ1Y9whF5See3oXqmeTvs8yO/LpIdqdjEhFX7dE/LZFtdSvK
         x2rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=FVD5/e4JpOhLjQ4EwK8CyUFMUCyUEiCOHYLJ5EQtpV8=;
        fh=rcaHQsR7EgjJz2shVFmursQrR6TKq7KFdx/KThCROlk=;
        b=YY8eoGwoBY4JlnKrMedXVm/TnbZuZhb/G4Xviz+9sTB+UnpFwlNU3dKUsMmrbmW67f
         P2fq6oPswOn/GNtp0JMvmLotdJ8Dtfpbdk+ATtAWeWp9YIYnw0d+UR3TIc3qXDTRUYvh
         EVR2xu5tkGGGPkvDi+jojO3JEbmmFVXbS3cQNFqB95UUTeyFMfWP0mX3+gRkIrpla+6j
         saSlhY5GIE5a3yL4d5gpLfhSEr9ARUEt6PYXccWw9z859lBGSGDzQzNG15HUCn7n5dyn
         71EVlincGiPWqGQDfnBDT+QAEDALooA62p6sT6E6yG4TMTLYtayKw5bgHmGY33txn1Ku
         5cfQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738360135; x=1738964935;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FVD5/e4JpOhLjQ4EwK8CyUFMUCyUEiCOHYLJ5EQtpV8=;
        b=JoupAkcFtC3/orsozfBpZUQw8IKt+ITBeVZh7HtGDY+ufpH9Va79GLHQaJ/8Zev8W3
         5Tl3eKm0ZYKzyEKE+NtJLzmAhkSj8xj03KAJCy+PnI3/8rXlhGJqDaKAoKIsLwxtzwY1
         MjMwI4XI5WivTYQFg8OAohmQUabvdmTfup2Q2HjO0poQX8lioP+j4gg3bV5ZxGlx+kMQ
         kyv8k3L1XaEfjc6YNMBh3aU8sZyQkPGwV6IguqJrF2ZIP8vmlMc1uTmGCxz0ndJaZzMu
         Z0g1P+zgkgeOjg4xIlW8GnUAQNP6XH1nxB8Wn8XiRXaz9V2ndD7S0rCHH5/sDFGssyqY
         rC5g==
X-Forwarded-Encrypted: i=2; AJvYcCWolhvRVWdIRUcyNa0CU/ZTFhavo5viPF0JXAaUymSAHawwxDuqwzmOwL7L/yn6b9UoN2aBug==@lfdr.de
X-Gm-Message-State: AOJu0YxCIS+fnTZDX2/QcAMag69k8n5apPzbzlxGRUJvkB2oldUVdfKo
	xilev8oIsW/ZYVbtIjgww+X0YPywun/lHxIqWCgQ8TyKTtwMDh9nxOcC9Mx3ZJg=
X-Google-Smtp-Source: AGHT+IGoVvQ5xjgGVUZiBpAqvZDTVOQZeDHE4baf5BHFoCkSS3iCD29Zd+r0yMrbJfjCqD6X2VOu5Q==
X-Received: by 2002:ac8:5811:0:b0:466:b382:a789 with SMTP id d75a77b69052e-46fd0a820bcmr205198421cf.4.1738360134695;
        Fri, 31 Jan 2025 13:48:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4615:0:b0:467:6771:ac55 with SMTP id d75a77b69052e-46fdcf87f69ls37104171cf.1.-pod-prod-06-us;
 Fri, 31 Jan 2025 13:48:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXMzMRwYxZEWT6asni0dkpBcZLGF+rZ8neG9vJJ6sMJSshPOPk+cPo+My+tDUJRozFvp7/ylBZEV05JcA==@gapps.redhat.com
X-Received: by 2002:a05:622a:1c16:b0:45f:788:b1ad with SMTP id d75a77b69052e-46fd0ace3f5mr223244951cf.27.1738360133235;
        Fri, 31 Jan 2025 13:48:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738360133; cv=none;
        d=google.com; s=arc-20240605;
        b=dS1ZBMakbXQR2gBzmFAe46hofSYcvG/ZaMwO3NeCTc1EVnLBCYbsndIhRkbFb+Y7gE
         4XO/K13rD9ldnsVj+O6B9lnfvDTH71sIF3Gs/uMcyheCR8NHecVEojTavxWWL35QsDsy
         m+fx8+XbkgHJ5hc75tbLhaGeeIjZQRRtNV7RAUX847l/hPEnFIqzWk3U3RHpjTnfuLJM
         fbdvl8nQo/lMy6cujDjSrZ1kItxoizm30XMfy13/y4C0t5tZYzajVpv3g6ZkmS4hOhar
         exBAE69Mxd++uuZWU4MaTmBHinENxFg7ugBtV0+ms7NizQ0ZWdy873HO89K8e3VagfEf
         i+3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=FVD5/e4JpOhLjQ4EwK8CyUFMUCyUEiCOHYLJ5EQtpV8=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=bdeCh8+e7IvSSio/tNHwBIxfyl4DDcEST5ncM19I8ZLDwT5LCjp3GCdO1M+EGAox7R
         Pz15tLi6sBjiSj9tfaID4PQBmJAcNIhGiMo58rn3wPwGiiqiCiiBDPtOcqylaYx77tlT
         Ft+twDwszZYqzjpRiyWFaodXCXFZy1wrwlj+6pWqDmBv9KwR05LnTVbwdojVZtlhc644
         th5Tl5GrO1jR2zhWh9eaMUeAMBKGBpYmQuovn/f5LFzdfgsI8AC8Vsb+j3DiE8efkC+N
         qVjcRTPzTl7P25f45p8D3mliva6dlHld1SJIPw3QE902/9GQzROzRtsup/AGF0TKbaFN
         2kKg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf1d09a3si46092341cf.357.2025.01.31.13.48.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 13:48:53 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-651-7pb_b_KHNmCn7ZJ2mzgY8w-1; Fri,
 31 Jan 2025 16:48:51 -0500
X-MC-Unique: 7pb_b_KHNmCn7ZJ2mzgY8w-1
X-Mimecast-MFC-AGG-ID: 7pb_b_KHNmCn7ZJ2mzgY8w
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B5FA319560B0
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 21:48:50 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id ADC5218009A6; Fri, 31 Jan 2025 21:48:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AA80F1800998
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 21:48:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EC7D519560B0
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 21:48:49 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-609-0u66m6wYNp-JEK8dSZFR5A-1;
 Fri, 31 Jan 2025 16:48:47 -0500
X-MC-Unique: 0u66m6wYNp-JEK8dSZFR5A-1
X-Mimecast-MFC-AGG-ID: 0u66m6wYNp-JEK8dSZFR5A
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 9D0DA40508;
	Fri, 31 Jan 2025 16:48:46 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 62957100169; Fri, 31 Jan 2025 16:48:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 603791000A3;
	Fri, 31 Jan 2025 16:48:46 -0500 (EST)
Date: Fri, 31 Jan 2025 16:48:46 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: more gui obfuscation
In-Reply-To: <Z5zsPmVhEhvMGaTL@panix.com>
Message-ID: <Pine.LNX.4.64.2501311647400.2141668@users.shellworld.net>
References: <Z5xIBQ5itO0f071J@panix.com> <Pine.LNX.4.64.2501310351040.2129007@users.shellworld.net>
 <Z5zsPmVhEhvMGaTL@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: TEIAuXksPv6lkRu1EMOjpcXtGL672QmRo7KTbzqi2j0_1738360126
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: H2-PAC2-IUFxMehY0paPZR-iX_8dDE9rvegOLKOhIfc_1738360130
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Rudy,
I have no Linux setup as I have no way to use one speech wise.
I do hope those instructions help others however.
with appreciation,
Karen



On Fri, 31 Jan 2025, Rudy Vener wrote:

>
> Hi Karen,
>
> Yes.
>
> Put the following three lines into a script file, e.g. ytlisten
> url=$(cat url.txt)
> yt-dlp  -q --no-part --extract-audio --audio-format wav -omyaudio $url
> mplayer myaudio*wav
>
> Make sure to chmod 755 ytlisten, copy your youtube url into url.txt  and run ytlisten.
> This creates a wav file and plays it with mplayer
>
>
> Wav files are big, so if you want to keep the audio around for later, I suggest you convert the wav file to mp3 with lame.
> e.g.
> lame -m s myaudio*wav  -o myaudio.mp3
> rm myaudio*wav
>
>
> On Fri, Jan 31, 2025 at 03:54:27AM -0500, Karen Lewellen wrote:
>> Hi  Rudy,
>> Does that include specific YouTube links?
>> For example, I *very* often get a YouTube link sent via a discussion.
>> Even better, say I am reading an article at rolling stone, something I can
>> do quite well with lynx.  there is a YouTube link in the article, and so
>> forth.
>> Can you, as you indicate, scrape and play those?
>> Thanks,
>> Karen
>>
>>
>>
>
> -- 
> Rudy Vener
>
> Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
> Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
> Website: http://www.rudyvener.com
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

