Return-Path: <blinux-list+bncBCV3N6GOXMCRBYFW665QMGQEFD4F5ZI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 8108BA04FEA
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jan 2025 02:56:50 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8f78fdad0sf245473256d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 07 Jan 2025 17:56:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736301409; cv=pass;
        d=google.com; s=arc-20240605;
        b=gupbgygngCBunE2fAPLSk5VUfB162ALNt5f9UHwxXNm7ovzE8FsFXvdSJZZ2cF9/IG
         DI5/p4BCSjl8YFqqLQDk3jC4aLQSKR5t7mW7vb1phP2VAZjdQstyvobcUQGMq7ngA8/L
         bZoPPuVsnxw8u7UDKvF78/EMCu9anLHyxZshHQ1rNkbDUGzTh6bvG5br1R/EAFO3p9O2
         uyH6a9qAvis8U9rbKKMHvmVSYk0qXMbD4Ue/Er9VPKeKlMyocUeEe07buKEp3e4hXlTf
         myg1LMeZb0uJ6RhxrW9GB+K1pMfYNJJlVPfF483QQLeOkYR3aDqAzquA97fkORMTutFI
         jDcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ktHr7HMDvAuvxLMU0Vzdojte8ukHAis/L37WqgUTPig=;
        fh=6PdSRp0SaMQNfn/hbabnJB5GliCJZWM1t4yFrVFMNQI=;
        b=XZzR9Dhr9NVx81lVqeqQEeX+C9IZy5LztesYzTnySbqOYi3SS3kviD6sAIfSfOkDch
         BFCAtNM3hLGHnrAgs4ISjk5pap/qdgRMOXk35pQ8zou28LYxZxCODa05ZOkpXsG34FVH
         6JBKjL34opmBMcFPXk2sA2wDWgj6lD7BOOc7wRio+bHL+xDT4AhIWUJ+6KhF0dypKt7L
         nL7PmS4Jdm/rM9BxwrxVnaRPvM0BunotncxUbpeHbgI5yoJo+mqdxiSmSO6EF1E2I7dh
         92VBPgddO2JaQCYb69lNDb9Zuhdmr8KjtD4e+mwk/NZlSHrrV2c70gxd3rMyP/g/zPwJ
         XcKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736301409; x=1736906209;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ktHr7HMDvAuvxLMU0Vzdojte8ukHAis/L37WqgUTPig=;
        b=OMnglsyBcJEO89NljdEc0uuUJ3bCvhBvqkIwRxLjNE28pNfsL1HF55FbcKrPt+oi9e
         49OHDBI16tWrdAK7xu2ciNmL8wT/G8ugTXid729GiziB423jZ7hfnD54KZ61mvjl43tu
         2kqMuIFmNPS0ChHQLM9X734pY6yO3QfOWcGXNr3/TB/lmKK40h1l6Lh0vyZI+DK7+xoG
         QQ5rCZxCjRHzV/Mb/5wauQgQshxhTjP7af4GFs6AtqvOSlWVRxhMu5DkK8nxR1LZpyu7
         ZxS0AaJ10aWZgmQ18ZZIs1EfsR1EUtXeHn3pmollfBjmCYWw1avrUDbZFxUvs1BTEDGG
         DfjQ==
X-Forwarded-Encrypted: i=2; AJvYcCWFkRTILoiBovGmYMm/Dwb+PYfuVXs8yE0yfiBlXH36YoyNJoZaW7svHC3xy0YMJxqYQJ7Xyg==@lfdr.de
X-Gm-Message-State: AOJu0Yz4J2F4MdysiymPiH7KVwPwf+FppEj45u0Wb8WEf04yJWIL5NJh
	XQARnARI1ShwoEaaUUGKEhg/tZtv0caIZRv7pJaGlf/inB65HBXhVbJNg4zz0mw=
X-Google-Smtp-Source: AGHT+IFKwF2/TmA0DMlk97Klojpt9ubgtn1H/Mgmua8Lck7Gphc8pC9hD2oEAM5GOHp1BlUI9GqWug==
X-Received: by 2002:a05:6214:2463:b0:6d8:ab7e:e552 with SMTP id 6a1803df08f44-6df9b2de7edmr23897606d6.39.1736301409027;
        Tue, 07 Jan 2025 17:56:49 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:c583:0:b0:6d8:a5f7:f114 with SMTP id 6a1803df08f44-6dd153bc263ls62750486d6.0.-pod-prod-03-us;
 Tue, 07 Jan 2025 17:56:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVBAuS/s8VE9+xkIO6i67Qje6vmx6frB9mS6heC4hPx/o+80OMw7Uird1V9Eakqp83GsSc2mv396JqxZg==@gapps.redhat.com
X-Received: by 2002:a05:6214:62c:b0:6d8:e641:da29 with SMTP id 6a1803df08f44-6df9b1cb73bmr21649306d6.6.1736301407946;
        Tue, 07 Jan 2025 17:56:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736301407; cv=none;
        d=google.com; s=arc-20240605;
        b=DpzvZHMtoDD8BrA+XjR38yNQKh8hSHFNpFM5qwpy3bQjVXRCHgs5UzmRNvu7CBIN4f
         tps2Pzbu7qQIEA0qBH1rtRfSC8gqq5B3WpIRvT18FeiF31F1/3pVARY+3tq5xxxFUXhx
         hoD0iL6jzdYh01MEDXmkV+oEan3aOwC4ETQ6DOeKF/5uDVptKlob5DwDB/D/Ye6hOxgz
         dFOFsXke2/6MZIvXutmCETZ7qWJIIZTtIb48OLthB0GFu+RDJkX1fFuRara+eu3n5qlK
         J5icflLoy5dWEIJMZmpT0oD6fLKSLaXA472qy2x+sFGSYiNcIFfqBcHQla8xS/uYoALQ
         POzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=1hAR2r4bsdlIcwG0fFTwEdF9M+6Kk8N8yjhxf9S7Otg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=JEn3g/CSP2cWVevmy9JooTUto193y1WiB0huXsV4FBB/edKIL/NKIZCpP+LCqpjZR/
         8U0fzxFmF2FuCU4frgYbdjn5VDrYo3K8HS+FRyZPXQSGbOgvnoQ+oyPmfghdpypjsnhw
         vTFkL9jkWqVEk35AWT+CyGCUsV9uMpFXmUST0gJDFgDFESBNWOSFXbV5CAAwQ8OOcncC
         /cnMa42+6t0/80edYTsBin7n6ZRfIcNNstEif8c57oP30QpCt7TRzEEun4xC1Gzx7XdY
         Bu/MhVXWfI1L933nLzvACT0YRHgErWLsh8kiAYNwLCqnfV1LHE4x1cDmjHvhug0fiFLI
         fBMQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1824cb40si457165286d6.292.2025.01.07.17.56.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 17:56:47 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-655-6V83BJnDPY-MS0muHHP9dA-1; Tue,
 07 Jan 2025 20:56:46 -0500
X-MC-Unique: 6V83BJnDPY-MS0muHHP9dA-1
X-Mimecast-MFC-AGG-ID: 6V83BJnDPY-MS0muHHP9dA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 97CCC1955F42
	for <blinux-list@gapps.redhat.com>; Wed,  8 Jan 2025 01:56:45 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 909511956086; Wed,  8 Jan 2025 01:56:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8D8801956088
	for <blinux-list@redhat.com>; Wed,  8 Jan 2025 01:56:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0293F1956053
	for <blinux-list@redhat.com>; Wed,  8 Jan 2025 01:56:45 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-437-PP_fR0YUPKCgouDZVXKB5w-1; Tue,
 07 Jan 2025 20:56:42 -0500
X-MC-Unique: PP_fR0YUPKCgouDZVXKB5w-1
X-Mimecast-MFC-AGG-ID: PP_fR0YUPKCgouDZVXKB5w
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mt757-1tkFd33HZZ-00uMG5 for
 <blinux-list@redhat.com>; Wed, 08 Jan 2025 02:56:41 +0100
Message-ID: <4ff1d3a0-740f-4849-89f1-91bef9ac1616@gmx.it>
Date: Tue, 7 Jan 2025 20:56:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: MiniPC's
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E1tVF0W-000Hgp-2C@wb5agz>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <E1tVF0W-000Hgp-2C@wb5agz>
X-Provags-ID: V03:K1:LwEu/1Zu5Df0/udLFzYyiJWOD59x4Yvgz7DRhH3+5lami17HQCL
 of9ajSc+JdIQM6mI9a4zATxrbnVJQ5QLFkUgsXlYXcGvOBal1q4AKs2lzRj7w1WYX5EzZ9w
 qhBGImvB7L4W+aZayMALtgsH4M/mS/QpDzRJ+fd05jiwB98SDd/f838ZQWsFkR9Pl+MAjPt
 HfhH5r8XME+3Up6VzSZhA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aUehJxDN0HI=;OKKFPnIAYhaFWYHgmMTXIl6eSYk
 wCovx+urVXgpk3/sEVbDpKkELxkcbIwwplKmRCQFrI6MDFnokL5WBVPMiOAGG1id4bCTx2LmK
 OKXC+mG82Czzy/S4GtPFSqgxMVUG+dcsm2p9KDxf4916SsBEuUow8Uyqw/sRuFubTtjIrlaXz
 Uzusqb+MZcfid/+tSGWRLQvcISK6IoDlJpco8nEvTfKDNGqgn0f/ZP19i8gmaUy8ODYte0PB2
 j71SInLViM5OKEFMe/KoPG3zEXdslnZcJzBb2XDF9sGWra030aMq3D39/v9iGcFTgOoulMJtn
 UAGhKPbaDzNMZ1KqEhjoPlZbjxv9GDoMvvlK+rRprqk/zhGvqh0Uz5PJjvUsgHROT9STlsQcR
 pU4S62lsblt9vQ8LMMiBLAPQ++dL8w+J7+9SBk1YKXsDYalDmxrZ0RuXkSEXHEu9ku5EkMUC9
 OEbmLSaYcFXEpmdBM76KePqy+IlwnTcxJNcWXsBTDTXGsRp8uLlQw7tN1egoA77UL6ZbXp9BB
 Xb7UH9JvQUCiBGmi+rib9dz5tdRKDoX31BY7pGkv6VHdMkVRXvgU8zdjpgRIB1+LdjWDMExvD
 15h0Faif8o9hPe7rRm/tArDOnliwXdu+OpI3iFtza4sdcksfz81WFPf/Qn+hTqrnSUq+KlYdk
 Lgzj6Eba5y2wjiEuN08I1fff6YJf1HVwnz0Rb2T7r4t8esqgU3UboYKNIgd4YUoCRRLWPQ9LD
 kZrpZBOdSO0H1EuGE0VfnibxqzhteQ6BZ4jGBUpZznNvFtbPWZHAYKs250SbN3L2eJNI+8GSb
 u6W90x7mrqJI72AH7KbzcMHCpfTB5lkYvi/7sl6ktAPLKQDcf59zLYlyuVeLT1ord6UaNtkm8
 9tciYZ7umYMoFK3ALs/5mHpl3enUeHbhqsZXSbUMH0XY9CeOwTA8eS6Gy4C6yQvsKt25RoeZX
 klrigJZ7bACEGooARdsyhkD3z1q/MnfIC6g3N8539Vfdd1Q+kHRocjLPWxgYRSWN6wCriX2Tm
 RVkmYsUmpilno0FGa+qsV3UtFVa2XflPg/aBJuP3Y3B6qq2XjMV0v/TbkcYg57F8z80XMqskI
 S3rGNGRtE=
X-Mimecast-MFC-PROC-ID: QcN4tBiF_S2gfKM_EQ6DYsdAiPp-5F8M81BBkkIKkpQ_1736301401
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4oa5tm_LeesFrtqWJg2o326m9iQv9Boa69JgV9DpMpA_1736301405
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

An Atopnuc miniPC originally running Ubuntu 20.04, now running
Fedora-mate-compiz 41, recently came into my possession. The first thing
I notice is that like the Raspberry Pi, this little machine does have a
working audio jack, so it's possible to plug headphones or speakers into
it. Also, the problem with your Raspberry Pi is probably not related to
parallel tasks, but may be more related to i/o, which is known to be
slow on the Pi, although I thought this was largely fixed on the Pi4,
and by all accounts should be even better on the newer Pi5. In any case,
since I can run a full desktop on the Atopnuc without too much
difficulty, it should be possible to run something lighter as you
suggest, and sound would come through your connected headphones or
speakers. The main problem is that parallel tasks would be slower on
this machine, as it has a dual-core processor as opposed to the Pi4's
quad-core CPU. I/o is quite a bit faster though, as it has an in-built
SSD and an additional MicroSD slot, so you're not limited by the speed
of your SD card or the USB bus. The main problem though isn't even
related to speed. I think this specific miniPC may be discontinued, as I
am no longer able to find them. I did however find another Ubuntu miniPC
with a bit higher price, but I'm not sure about sound, although the rest
of the hardware seems similar enough. That said, it may be more
economical to try out the Raspberry Pi 5, as it does appear to resolve
some of your issues with the older models.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

