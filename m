Return-Path: <blinux-list+bncBCVPTHE7K4ILTCHWXQDBUBH37333G@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AF2A24676
	for <lists+blinux-list@lfdr.de>; Sat,  1 Feb 2025 03:17:31 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4678b42cbfesf53935401cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 18:17:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738376250; cv=pass;
        d=google.com; s=arc-20240605;
        b=Z62adnQO+VZ7144u24qv1hDHrElSlPKUotMCbV1dHlP/wCNWtT51SHoUSm/s3144bf
         OMqPTfhPukBHNIRtbvlxfZYpBJTd7kkQ8haEY+xPgKTwfjpYvpJzu70eWrkMU9ew823L
         PoOggbXZe+oqYIsbUBDjiWAomC71YOkE5XO+ohlOPDzjgdoGddk4+RMwNxplOogeQBGQ
         GgQJnu9sFAXuGp/IRzbPdGPVYwR4HBptihv1Nmx1LqIFSfzQvpB0/YHC2ueE6PdfRSAG
         K+/WWZiot7LjMALiiLSM/A7P0O0KcSb50BjajAx6W6WJJjn9n8z1lymKE9kD22WFlxkI
         DhQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=lP3821pN2g/91p+ZqPv2fRxeJFLZ4mWs6ea+c0BV8TA=;
        fh=kdehlQJtQ++LWL5qHPs9P5FG1FX3Gn1sWnOwUq3MhcI=;
        b=D6umLtUf3PoEvKadEqJ5ML25bJr9vjAmacEz2cG3PYjJXhbMkZD/+kRwqKWX6vpzeX
         ZlZiWZwnRIEtEIc0K97QhNl1ML3M8+NMGJmcaHNl5atFSLOw8CWf1zAKBwWYceXwApKi
         uLiG+gpDRPqFL3cF08KVvo1LPue3sWJK9Xx3Hha+L4fZCDpYEfaQGPX9aAylgqgfke1C
         3lJBsNzWuQHp88PUvI8jk3nPHUz3aiSw1FuhQ0dVE0sIq1IU12YXYEsWawK1/Ym379rV
         SQhS6dNvHW1B5NpwrdqmCY0xLSct49nkTq0Mzayx7rngwmu15rhW2GvWjJycMQBHP3tN
         DKlw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738376250; x=1738981050;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lP3821pN2g/91p+ZqPv2fRxeJFLZ4mWs6ea+c0BV8TA=;
        b=Qtyha/bfTZqfX7EqwokvvW3RcGk3+sCLFUH+FnZN+WpIwRTJIySvi7C1Hpk28Ho5kh
         bhe+AjbJxlNKI14MLJy5J1txqhan6B0FUsI15DvP5b/kLpDHUhBGiTW3m+k11h7fqn8E
         TmdcFynjj1W+a2WVIcthhteKCIZLSl8SeTBqsggNomVYbMdEpmU2IKuBWS6CdUWfouCj
         gMNnFWOlegsgYroppSlMyLDJdtmXcVWyECpY2BpL7arVbpHABS5CXNTmxKyh9wGoNM7U
         dWgjARLcxeAVyw4lc3kLY8+gbJWenNNGRudlOyuh0/lYTd1XYSJ1CzfFQFGfrEN2+3ZP
         zhcg==
X-Forwarded-Encrypted: i=2; AJvYcCW5hoG+0DRVGXvFume/XCExgVetzKgz1xAwVjraO4PlU51u3FrVmz7xaolQcy1H8+H92s+HJQ==@lfdr.de
X-Gm-Message-State: AOJu0YzQq5mgcm32ZGzvQhI2MUIsnPl2EOfvpqnlapjqEsICdpMJITX8
	3RCwZWUSweg/fdkCz11x1gGgqebWM5Whj9OBieTJF7XKXIKYoMNJqjPf1RXPJKw=
X-Google-Smtp-Source: AGHT+IEGD2NfJLjfv88Qwebdjtd6KtZW/NUtXU1CTvLpzSta3V8ogvuGuSm7XgPQbQ3PB6W6usYGpQ==
X-Received: by 2002:a05:622a:4018:b0:466:a04c:e9db with SMTP id d75a77b69052e-46fd0ae3433mr250196381cf.33.1738376249856;
        Fri, 31 Jan 2025 18:17:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:a044:b0:467:5082:dafc with SMTP id
 d75a77b69052e-46fdcf6b3b6ls41685691cf.2.-pod-prod-02-us; Fri, 31 Jan 2025
 18:17:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVUeCH+2cXnEHNIN8X8lv9v4eHvaJFKjWMyVQSLMRizPBTm1pfvyP0hLgE+w9twcMJWze2V93yx3jFYWg==@gapps.redhat.com
X-Received: by 2002:ac8:5fd6:0:b0:466:b395:fe with SMTP id d75a77b69052e-46fd0ae1b2cmr232478281cf.35.1738376248737;
        Fri, 31 Jan 2025 18:17:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738376248; cv=none;
        d=google.com; s=arc-20240605;
        b=hMplewkbwkJ9yIK04qmVhw3SzIm1INe08OkqqEkdRQKEwt6aQhm6aIcf8Z7nmiXBwr
         7YlM4YNN5Q8p4HZpCqp8CMHkq4nrWKzxiYDk5ChWw0GAeX3nOgiPiOZv05AO46OSc/JF
         u3zX7A3BCk5eMHuKsiPJ9od1MN7jpT79Q6bNZegb3tRMhiYSR8UAdmAvgx6PpUxXCAaI
         lImTq6LKH9zHWwTc+hycepL7Qo7i4XKQOX8ElWPKPivaFb+cFZc5wW39eSaGl8YJrvHe
         gt0XAKuYOV/paFlBVCrShPx7/8GbKddKUZSFT5Mt3ppapHOkRffOUFBMUT3fNWhIR+4T
         UAQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=lP3821pN2g/91p+ZqPv2fRxeJFLZ4mWs6ea+c0BV8TA=;
        fh=tV+Bar99KZAh063knxXNnwlVKIeXjOrOgjjwaSMIV+I=;
        b=a2YIMxkaxCFuOH5wEn/RRbiYqr8ROXAh5E37uM8qTNTnBV7/KKS1btwwuEvwTIBeQK
         SavE/RYWXY7Utn34p6EGTpSVyZns7D0QQl3eRhd8ibBqGia8RWzdkJkNC3l9x0LmPLom
         YLb44RlNEndokSlHNz9NmajgtwJIv1FiKM16CMUzyoMjyG6EzX7I/EjBHRiNq4kSwkeC
         85MI81HWXsDH70gcc/is9kYsfQOw8hM2bZw6U8Y42JiP6iVo/KboluVcZpVBxz2YbGOA
         oI6jgOx31OB3JfVYaF8HaVvx5ykYs1sUcq94uxF5ebv12q9k1SfmFs25CEtiuheQlnAY
         loAA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf1d3327si55144671cf.464.2025.01.31.18.17.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 18:17:28 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-567-e0QODHeNMG-EL7TYuyJcpg-1; Fri,
 31 Jan 2025 21:17:27 -0500
X-MC-Unique: e0QODHeNMG-EL7TYuyJcpg-1
X-Mimecast-MFC-AGG-ID: e0QODHeNMG-EL7TYuyJcpg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 44AFC1800361
	for <blinux-list@gapps.redhat.com>; Sat,  1 Feb 2025 02:17:26 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3FD2B1955F3B; Sat,  1 Feb 2025 02:17:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3CBCF19560AA
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 02:17:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 05D2C19560AF
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 02:17:25 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-606-zS6KDKYgOj2wW7NJ4VXc3Q-1;
 Fri, 31 Jan 2025 21:17:22 -0500
X-MC-Unique: zS6KDKYgOj2wW7NJ4VXc3Q-1
X-Mimecast-MFC-AGG-ID: zS6KDKYgOj2wW7NJ4VXc3Q
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 72ED840508;
	Fri, 31 Jan 2025 21:17:21 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 339001001B0; Fri, 31 Jan 2025 21:17:21 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 3114D1001AA;
	Fri, 31 Jan 2025 21:17:21 -0500 (EST)
Date: Fri, 31 Jan 2025 21:17:21 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jeffery Mewtamer <mewtamer@gmail.com>
cc: Chime Hart <chime@hubert-humphrey.com>, Rudy Vener <salt@panix.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: more gui obfuscation
In-Reply-To: <CAO2sX33D2BGvtCvi55_UeMrDuBx1xePHfDx-Ycqvn8KPd8CrFQ@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2501312112240.2145039@users.shellworld.net>
References: <Z5xIBQ5itO0f071J@panix.com> <Pine.LNX.4.64.2501310351040.2129007@users.shellworld.net>
 <Z5zsPmVhEhvMGaTL@panix.com> <6aa20dc0-b64b-f866-090a-a65e80f3dc05@hubert-humphrey.com>
 <CAO2sX33D2BGvtCvi55_UeMrDuBx1xePHfDx-Ycqvn8KPd8CrFQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: ForHMYpI8lHCB7tVem0Jhb1199lkaHGYnOuK0qkClJc_1738376241
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: lxoQRNWXcTAyEQ3UlpKwueqtU_9Aoyt2reF4kbQNFXc_1738376246
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

Hi Jeffery,
I cannot speak to the personal logic, but I can share a reason why, 
depending on the project, I might choose .wav.
granted I am a radio producer.  For high quality broadcast work, one wants 
the least compressed edition of a file..even if that file is very large 
indeed.
Compression can happen with the m classes, stripping away of things.  Wav, 
and  Aif, are considered to be reasonably lossless, and in theory better 
sound quality.
Just a possible rational.
Karen



On Fri, 31 Jan 2025, Jeffery Mewtamer wrote:

> Is there a reason to have yt-dlp convert extracted audio to .wav instead of
> just leaving the extracted audio in its original .m4a(a tiny fraction of
> YouTube content) or .opus(the vast majority of YouTube content)  formats? I
> mostly use yt-dlp for batch downloading entire channels for offline
> listening on my Senseplayer, and other than having to rename .opus files to
> .aac, have yet to have a problem with playing downloaded files since I
> added the option to extract audio to my
>
> ~/.config/yt-dlp/config
>
> file, and I would expect mpv to be less picky about file extensions.
> Converting to .wav just seems like a waste of disc space(perhaps no an
> issue for individual files you plan to listen and delete, but adds up if
> batch downloading from a newly discovered creator with hundreds of videos
> in their backlog), and conversion to an obsolete lossy format for archival
> just seems bizarre.
>
> And incase anyone finds it useful, here's the contents of my
> ~/.config/yt-dlp/config:
>
> -o "%(title)s.%(ext)s" -x --cookies-from-browser firefox
>
> the -o  and what follows prompts yt-dlp to save downloads with the
> title of the video and the file extension, the default
> behavior gums up the filenames with the gibberish Google uses to give
> each video a unique ID. the -x tells yt-dlp to extract audio without
> doing further conversion or saving the original video file, which both
> greatly reduces disk space requirements when downloading whole
> channels and saves the hassle of manually extracting audio afterward,
> and the bit about cookies cuts down on downloads failing due to
> Google's anti-bot measures. And having all of this in the config file
> means I can just invoke
>
> yt-dlp [url]
>
> at the command line.
>
> Though, if anyone wants to suggest other useful things to put in my
> config file, I would love to hear them.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>

