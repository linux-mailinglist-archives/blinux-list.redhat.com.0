Return-Path: <blinux-list+bncBD6J3OOK2IIBBLN6YCYQMGQEWCFAG2A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id E62318B65BA
	for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 00:29:03 +0200 (CEST)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-22ef805c46csf3289875fac.2
        for <lists+blinux-list@lfdr.de>; Mon, 29 Apr 2024 15:29:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714429742; cv=pass;
        d=google.com; s=arc-20160816;
        b=aBf4kynM1L1aUqLdovcpBz/v3DnveWX8uapLMk6fQACaRE2/KDsTxYie6Kcp6395Ja
         X2V4b57p5SQx//vhxDa+3OU1mXbR7kdjxriqOH8y/4p4ZWjeR5QtqwHYSiesd1g31VH9
         xoZDNlRYSCSdk7pXHG0s/sqqt3iWHMJcbFnAWgn48xVI90O5P2sdAU5ThBCyisBcX/Dt
         8KBQ6r8ZUfnhxEb+c3n94UmmVlWzLEivTXWDNS3D7FvUUIv083digr1t/TyA8zoMMsf4
         NKD9aOiZodc/46CilGB7VMM9gunDoL+Kex2xCrbrmEDx7vQsGv3PYYU/IZQfzuIRgY3m
         lFRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=tVQ310If+I+yzgRsAh692sZbIA8l8d9tdy3wLnQ8ZDQ=;
        fh=7uMBd+QdnwOlVRlu9CSIn5hP75U4wG+AEhHwSB6EYno=;
        b=hDsXFBUP76sfTl8HhBCKER3vBGMFOzbMNuAhXHVkOL/mzZ1HnaBUwfrVuRRipx0iN1
         AwlqvvJ6SR+iuQXSTVyrMrHfu22qklOK8zPh9T0yQvxof/CRiuT2LgzSm1lSTqeiKVLn
         xh2S7SYnFl9s1bRKp9dKllRBf4MbREiACh22Yy5vHOBE/1EhpNqIPTl3W6tF1OH5OBJ3
         1MQmTzkrPJ8rZzotQwynp64qM7rXCuSGfhT2RJCESfVSvsw2Owch7dmxf816FEmYZg0F
         AmsbhG9+4+6LBowR/o5ug8/HO//lvW/Cog7Fn/a5vn3h+DMnR2zyrtF/mjgbjvVaqVPH
         QXsQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714429742; x=1715034542;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tVQ310If+I+yzgRsAh692sZbIA8l8d9tdy3wLnQ8ZDQ=;
        b=VpsR08qTp53jDARFVFm/accWRV/lCZtvPcUcCDFabk8KC+M7eLGFiTUIvFEQnfGd8c
         gCL+pmKgqAY+ZVegwTvE8mM9LJQzf0DS/xYDyRfMNU0jS8ieg+0W3HTsJs51mScc50t/
         u0TxdbslL5te4BDYcDbU2LNVj2QzLjDs1g1YcwtoRyb0Mpm3ywfvn6IqNtGsMeB9stO3
         VtXouLfsoP43kwgHNwB6G3GyyydXFhn5dbZ6TIsXUlpcVcKV9bb3+NXQQWVeSD/2/qz/
         cW5YmPa33DgwkBl+jAiQEwp9NerW3mSw/iklsOBplbp37qVs2Yqntn0mg3WstSMt9NDd
         2VRg==
X-Forwarded-Encrypted: i=2; AJvYcCWUTuNyXTgpz8Ijg7TTlFowkjh1SmbfuJ1t7hvjZgBb3mIEKYMNKW8NfDUz4juopgn1X67rxsM31L9kS7jzpzvPZuCybABK95kL
X-Gm-Message-State: AOJu0Yz/rISW3lt4/ZYV+IJNxvw+JMWLa0oO3q0zFNaGgoVucVyCxZoB
	fvYigc/2s3EP65vc05vk0HJ6XnU8mRGnIWQNR++HXIiEWBzqjz1aHx9zV3ZdyQg=
X-Google-Smtp-Source: AGHT+IHX2FhJvQ07I/juhuoOEX5Qf3nvNn1tO+xpuVXrAAXHUJdmsT71Mfp/Z7tia45FftxN0XyI+A==
X-Received: by 2002:a05:6871:3315:b0:239:4:589b with SMTP id nf21-20020a056871331500b002390004589bmr13447351oac.7.1714429741944;
        Mon, 29 Apr 2024 15:29:01 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:c695:b0:239:e86b:89ea with SMTP id
 586e51a60fabf-23b4217caffls2131551fac.1.-pod-prod-07-us; Mon, 29 Apr 2024
 15:29:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVfz1qBWuHFN7U8vri5wEkxhX0zsSsudoh3UY3OaYYe5LrEliWmS4O61oY+s5qdUTQ42YkqcFp5QpeTfuidTOTZBSKbauiyLtSBAvmq
X-Received: by 2002:a05:6808:145:b0:3c7:a4d:d54d with SMTP id h5-20020a056808014500b003c70a4dd54dmr13264757oie.15.1714429740909;
        Mon, 29 Apr 2024 15:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714429740; cv=none;
        d=google.com; s=arc-20160816;
        b=L3OFBO/rJOa0Xuen1Y7JkRkZtw7H++kEy41phVMKPS+LIrZ/zUafnYwGLLwm0VywWz
         IbUZ1XoszvW750Z/lJWWgMps8NnXKjlZen5ppKdsDm8oEkDClAVQQdnz+p1aUE598Fck
         N1XW53MImnbCYtTEniejwkPjixPHqveNYb0xHQOF/yq8DF1mVBgmXcNMXfvrRhZ4WCyN
         9oo4YXlQuqHLFgMpnTf8a+K+8Z9uUi5kkVzjCINz+VcPb8oQcHTX13OAUjI5BL2kGi/k
         R8rR0IrZhwSn2u3nMe9lhErvTt1L0ERMQPmFeDiHjBGZSPkjn1D45Wsgs/5EVl5FhdDy
         xDJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=/HppbOKLmVkU8GudCGExnczAK+KkCE/vQhYcQoWTmjI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=byue0kXtxkBsMxfiuoD9ovm8jQ92cOWhPdieCrkBLBF9MtIDyrQdV8d0unlO9xjYWy
         v86elJ/tpVvJ0bjYK00HjUEEpHjm8+YUMgbhd3MCLJLNw/9GD0yrYJrh6PTfjzZknb/k
         SjlV8dcF2KhL0ybgo0s3AKGJAWHoXpsoXl/mRmuyQDa8lPeUZ1bOqA3zCQzew6PgPkJl
         KNVSWuKLxq3hhkaagEz01QMJ6XnsRh+xe2wF5Wyl4Vwhp9Jkpcf8V/k4UJ66bxj8QBad
         rRm3LX8UIk+BWW/otIMWqkEHLeSFUaL6JyXToaHYimRggyXJfyGBn0fudBdyXZE0Hr5z
         vaXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 1-20020a0562140d6100b006a085a3965bsi18315211qvs.108.2024.04.29.15.29.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 15:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-336-z9fwxNs6MRa6jaPnOBettA-1; Mon,
 29 Apr 2024 18:28:59 -0400
X-MC-Unique: z9fwxNs6MRa6jaPnOBettA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 380A03806713
	for <blinux-list@gapps.redhat.com>; Mon, 29 Apr 2024 22:28:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3482B2166B34; Mon, 29 Apr 2024 22:28:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F09352166B31
	for <blinux-list@redhat.com>; Mon, 29 Apr 2024 22:28:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93EB229AA38F
	for <blinux-list@redhat.com>; Mon, 29 Apr 2024 22:28:58 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-578-KCIiAFLVMQik2nvRvDNMJQ-1; Mon,
 29 Apr 2024 18:28:56 -0400
X-MC-Unique: KCIiAFLVMQik2nvRvDNMJQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N1Obh-1smp5A0VtT-012zB7 for
 <blinux-list@redhat.com>; Tue, 30 Apr 2024 00:28:55 +0200
Message-ID: <20240429.222956.828.12@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Autible books and Linux?
Date: Mon, 29 Apr 2024 17:29:56 -0500
MIME-Version: 1.0
In-Reply-To: <61301feb-ccab-85d0-1bd6-7a9e5b27cfc8@QuiteLikely.com>
References: <Pine.LNX.4.64.2404260913230.1920571@users.shellworld.net>
	<44d70233-0be7-4067-8d75-672ef2bae651@gmx.it>
	<61301feb-ccab-85d0-1bd6-7a9e5b27cfc8@QuiteLikely.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:zAor0fOZLtg6QYzJvoTl9rtTi5Nwok8Y7ZVJyK8O+hc3BrmTbEq
 wVAabUsvtpRO+79msbnnL8b1Q9rcbdKcciI8pgUR/kPcPb+nxCCKfmzf18Wz/bv4oojymDG
 tKQ2go0cndInq+jJGAVu98OGJXmHorPjKUlIRnLXwOxyFCA6iOWL/6dJvzYsQx7eaT2O6R4
 CupNXu0tLpllSvv47Jrrw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9OwFVhsLnOE=;q/74w4TJHqKStSZ54GoOuszgOUP
 dfW2b/IkOYQI4FArQvmZ+sBMvkoBJGQlzHsQqwe5ZJpLAL0F3ohUGNohQ+SQbZTxY40RcGHcy
 I8/SYfgGiJaoxmw1pJxH5JMnVmEjweC3XWGqyis6PzUjFZJyEUfIRfRhSj3H7gC5UZ3vfh1Dw
 b9tZrBOtgWc5ck85YfCkbijadIE+xn6r4Pr/HsSeNO9zNLzK2uirz8Xzwb+mluC/YQpu75vct
 VhoZWGXBJy2pT8Q7EGpsku4XLWMrn4Kk/ICzytYJ8o/lYv9ukYL5dITC92dC8iydAT+d8y9Pw
 QBAMFBWqpGBoQogU2u6A+MTBZ1Uv6q8dSVScjgaQnPhfj8KuTGFoWKJeW1xP4IXuo2ultOOum
 Y7eM3ioCBLDdKYbUOCD5scsBMXRim+iWh4Zo+m1h8l9LWuT6UfRTjTW6HjUks52tUWVp9K7AH
 Ak1HgywE9KuvxhYb9pv9P2ku278/ndCbTZx33MMMx/jzl2m/lAuU0oz6Nvfc0LYb5YFhY9hhc
 SHlN3JEmZuRbs182rHq6QT1m/emER8q9an6IJUA7E+OcRMkwHodjEz3pY08SHU13mt17Q2Gcf
 vj2fviolPrRM1eFur39lnmwNYRDUlDioMB+hM9Co2Z2ZY5q5Di4hx72Xugd0CMMjA7SDS7q0b
 GMMenjONpDF0blqUFhWRwIwpXoIKkX1/w18LB7FSdCD3hMKLnsoq4bSe83DVwO5ui14yFmQgJ
 EQrMYe29vHOh4kicBO2F1Kzko+ukWCmkxRQq9VCWTAucsztqpFZANhH8jiogwZC+EJiMbBRls
 lVqUQLe5dGNqH9u45PdK/YmWnfSGyD9lM5V6VYNQt/W3Q=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

M4b is indeed more useful for books.
Fffmpeg can split them. There are several tools to do this. The one i use is m4b-tool:
https://github.com/sandreas/m4b-tool
Kind of silly, because it's written in php, but it works lol.
I've not tried the steps listed in the message below, but I am sure you can do the c:a copy book.m4b then run something like:
m4b-tool -o "Smith, John Jacob Jinkelheimer - How to Take over the World for Dummies" split --audio-format mp3 --audio-bitrate 96k --audio-channels 2 --audio-samplerate 44100 book.m4b
The -o is for output directory where the chaptered mp3s are placed.
----- Original Message -----
From: Geoff Shang <geoff@QuiteLikely.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Mon, 29 Apr 2024 20:56:52 +0300 (IDT)
Subject: Re: Autible books and Linux?

> Hi,
>
> disclaimer: No copyright infringement or circumvention is intended by
> offering the below.
>
> Here's how to convert Audible books losslessly to something more usable.
>
> You will need ffmpeg 2.8.1 or higher for the conversion.  You will also
> need to use git to get Audible tables for RainbowCrack for getting your
> activation code (this only needs to be done once per Audible account),
> which I will explain below.
>
> Here's what you need to do:
>
> 1.  Log into Audible and download your book in .aax format.  I've not
> checked but I expect that you will need to use a graphical browser to do
> this.
>
> You need to get a book first so that you can get your Audible activation
> code.
>
> 2.  The following needs to be done only once per Audible account.  Even if
> you use the same login for different countries (e.g. Audible Australia and
> Audible UK), the same activation code seems to apply.
>
> If you've already done this, go to step 3.
>
> This bit is a bit fiddly, so if it looks a bit daunting or you can't run
> the rcrack binary, you may want to get someone you trust to do it for you,
> particularly since you only need to do it once per account.  You will only
> need to send that person the checksome (see step 2B), not the book file.
>
> A.  Get the Audible tables for RainbowCrack:
>
> git clone https://github.com/inAudible-NG/tables.git
>
> Note that this includes an ELF executable for x86-64.  If you're running
> on some other architecture, you may be out of luck as I don't see any
> other architectures at project-rainbowcrack.com.  Anyway, a bit of digging
> may well turn up something.
>
> This will likely generate a directory with some files in it.  The
> directory on my system is called audible_rcrack_tables and I'm assuming
> this was generated automatically (i.e. that I didn't call it this), but I
> honestly don't remember.
>
> B.  Get the SHA1 checksum from the Audible file:
>
> $ ffprobe book.aax
>
> The end of the output should look something like this:
>
> [mov,mp4,m4a,3gp,3g2,mj2 @ 0x1dde580] [aax] file checksum == 999a6ab8...
> [mov,mp4,m4a,3gp,3g2,mj2 @ 0x1dde580] [aax] activation_bytes option is
> missing!
>
> This example is taken from the tables documentation.  As I recall, the
> actual SHa1 checksum is a lot longer and obviously doesn't have the dots
> at the end.
>
> C.  Get your Audible activation code.
>
> Change into the directory that the git clone created in step 2A (on my
> system it's audible_rcrack_tables), and run the following:
>
> $ ./rcrack . -h <checksum>
>
> Example:
>
> $ ./rcrack . -h 999a6ab8...
>
> The end of the output will look like this:
>
> result
> -------------------------------------------------------
> 999a6ab8...                               xyz   hex:CAFED00D
>
> In this example, the activation code is CAFED00D
>
> 3.  Now that you have your book and your activation code, you can run the
> following:
>
> $ ffmpeg -activation_bytes <code> -i book.aax -vn -c:a copy book.m4a
>
> This should result in an M4A file with exactly the same data as the
> original audible file, so there will be no quality loss.
>
> Of course, if you'd rather some other format, you can use ffmpeg to
> convert to it.
>
> Notes:
>
> 1.  This outputs the Audible book to a single file.  The chapter
> information for the book is included in the conversion, ffmpeg and ffprobe
> will show it.  But I've not found anything so far which makes use of it to
> allow chapter navigation.
>
> 2.  Searching wil dig up several command line hacks to split the file into
> chapters, but ffmpeg doesn't appear to have the ability to do this
> natively, which seems like an oversight to me.  I've not tried any of
> these hacks, but I don't see why they shouldn't work.
>
> 3.  I recently read about M4B format, which is simlar to M4A but is more
> suited to books.  I believe that ffmpeg can convert to it, but I've not
> actually tried and I don't know if the chapter info will be more useful
> there than in an M4A file.
>
> Good luck!
>
> Cheers,
> Geoff.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

