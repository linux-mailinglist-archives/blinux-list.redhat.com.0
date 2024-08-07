Return-Path: <blinux-list+bncBDYIZZNASAHRBZO5Z22QMGQENXZ5QPY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F7D94AEE7
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2024 19:29:11 +0200 (CEST)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-709372f2337sf102558a34.1
        for <lists+blinux-list@lfdr.de>; Wed, 07 Aug 2024 10:29:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723051750; cv=pass;
        d=google.com; s=arc-20160816;
        b=rPJIjpj6cXCwzmWbqrxnbKb810nTUyYwuOYP6JTpzpeo80/LoLjbeY91NVtTNWXfWw
         cha5ba/HMY9bHhKGazlcnnNd6C9w84/2csy4fCD06TyvIFyF4xjJEN0Ly1H7baFRKl8Y
         TGL4o1/YQax4zs7AwEFBWd4YPVszhNAXHCdMEUeTVYm9miM40zn1sX0yuRi8UJ4dy6+U
         O2CpfF2hQTwb0AN6Pbm1RKcSnGTTTOx6q/kJ9rAj/OFFLacusH7MQI+6TeCJSl8j2jkf
         1iIA5doJPG9Sn/GW0dsTj3XfCOUud/h+wVic2Brt3l/fHVMK8E0u/51mOQ6DW0yHxcEF
         sJ2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=IUu8csGLfR0TutegquWR0SzZLCx6aZt3SIeZJ3tfHfg=;
        fh=E0ncGNFr/nbGu/5hfmnoCQFk83icNHJ+tBuG+FlY/Qw=;
        b=mZFf7yOthnJaR3wiHEGSEtDgFqOyNAWTWRgSQftGuBEZ45RpJ2NLY7MebsL18q32wm
         Rw3i7NbfzZ6zoTfR9YL/kMBHjXiqOvDQqaEiElYTNa9Sd2a5W94GwxDttrsjyuxVDMan
         ZxQWihapyFAxPuXRAKlKTLYLhtVIof/AgayqcaMB8OZwE8xzRCeINcNtlT7FJdDP8VXn
         AmZepwIkCL3H4o6HvChaQXh96t6isWZR99HSWua5zcgLiSVFLO/9IPQOLSoyvtPG4GCw
         5HnbonrQicEvLWxmvdadgDCT5aoJA5+JwuWr3XbzuT0fFPwHI/Q/TkiecVFjFuLP+TBU
         oCnw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723051750; x=1723656550;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IUu8csGLfR0TutegquWR0SzZLCx6aZt3SIeZJ3tfHfg=;
        b=DrDxYyL1cD6J4XrnCgTeJp/NgRRXtKwTHCRzx09GXuvIcX5hwVk3hMAwMWziztdmFT
         rlQfR8LANvPHL/ybMZgzm9AjXXoz1P0w0nkIhxRn1WA4HUxccgguGxskOGb3TaXb06cA
         jGigWSfgN+T2IxvquVyhV4Qt+oZwfbHDa15s2D2PvSC8u2Lv2vgawJGQgnm6f2NXZGxJ
         HJKiGvkT1D3McUmLC5NSTYoI6NGyY8LlEV6V1SKgTAg6L44tI8XunebtIFTUtu0vGleq
         P9io0fKie8ivqOCiUSfX6MMSk82jIXn4jRmcmz8tCsGvRyxm7NKoEXx/psXzfybkbsec
         u/xw==
X-Forwarded-Encrypted: i=2; AJvYcCWJXbqPy6o0DFPyfrNfy58D2ZJRX92OjzhgdU7etUTfknhFZEaWLt6AGf7uRSOhhSDYTd8jdpFqFnamTI8guF4Q4/dohgXc9cFk
X-Gm-Message-State: AOJu0YymlhaLuWFQShBIh7TJQSz3IBiK+fbGQozuyIUecfz6BqccKVwt
	TGB1mUayAQ/e1Fl9NrXht1znFGDHfg/DgmIdY+3SqMAlAOZIjiDzOqzSdaGqh4U=
X-Google-Smtp-Source: AGHT+IEYZnJaHxjm0ZCbLiBs5+0UHSUf2/xU8wIR3DBiza6u9dDhomJnytxzLtLS4LL2Q8rkO4Bmuw==
X-Received: by 2002:a05:6871:7811:b0:25d:4f3c:c072 with SMTP id 586e51a60fabf-26891b3105dmr23963920fac.17.1723051750104;
        Wed, 07 Aug 2024 10:29:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:1d17:b0:24f:d281:c6c2 with SMTP id
 586e51a60fabf-269253c481cls114006fac.2.-pod-prod-09-us; Wed, 07 Aug 2024
 10:29:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVGu9k7BNTQWYtjJAJMdYSoyMJP70JewLl2zurzjIWFxGZ9+/37y6a33cw+/vfcAiun26KmJeRiM2clLK5iwKTgtb+CGDDa5P71Kv9v
X-Received: by 2002:a05:6870:d14b:b0:260:e096:414c with SMTP id 586e51a60fabf-26891f26ca3mr21364784fac.49.1723051749143;
        Wed, 07 Aug 2024 10:29:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723051749; cv=none;
        d=google.com; s=arc-20160816;
        b=d4Sbzr846GgkqUoJboNyoQNuT+34up4Ds+ZwrwyfwdjUnMBIaTFVFeCVbCBVhUROuY
         a/n2XcuDlZCVFfWYgUJwdOIKGK46KEDX5vxbIbsR7ufnW8Hz5U2kDi+J4EmA9pdhBFXx
         2d6/UQ9MnhjVNGKa96BwiVmlDl56YBB2fgzEax1zuTuDTNEa92aOfR/p3qrtDCEQ5GiM
         mJqgpgS3URmXVoPgHoEFUav/UqRp4ExtxDsQ0zZuF5+n2moMxWIUV/c1GkiR3vSIiITq
         7NW868l4F+Ax5btgvAKJUj0q4pPpcfKSheHdgTiaM+GGN7F8T2kiqEDhREjgP9PatwJ3
         Zj1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=bS8C7acyOWpFARhxSzNVmUgAy28PwuyDkFeW/BmGwWk=;
        fh=obKWOKfeeCXiw+dNEb20u8cBiUvzGGbGJxMPGrpnkCo=;
        b=l4lLFa7roYauoQ2kM6BzFgeq14eZ7CE0XHynwN8z6xQ+CpEZzTtjHOU8IoksNi7LiN
         b34XImAnA69RHNzS8Nyp19fGPo7JkGehlLK/N1AyFrF7VP2dUdMyGwin6sz88iO/E16J
         ILGgdHGGJH40Cu/gO852QzKuseYgHh9xiyH9UktjGAZsjLd8kKZ5EpU2SzgFaWI6E4C5
         0tAzBcOtpuQCocxbCgi457oFNLwL1t3lmcRL/bKLkKLIRA25y9GELUx3dDjkEqLNBrLI
         4mb6eQXLEO435XN0jc6+tbQJnK0CrMIj8EOvKhdruZYjepkM5VJt4kW+m+PQQ/oGFKD+
         cm3w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a378618ddfsi200941085a.207.2024.08.07.10.29.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 10:29:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.179 as permitted sender) client-ip=209.85.167.179;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-166-ISl0qCKvPj6HfqynT-GT6Q-1; Wed,
 07 Aug 2024 13:29:07 -0400
X-MC-Unique: ISl0qCKvPj6HfqynT-GT6Q-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A2E8019560AA
	for <blinux-list@gapps.redhat.com>; Wed,  7 Aug 2024 17:29:06 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9CE671955BFC; Wed,  7 Aug 2024 17:29:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 99A4D1955E8C
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 17:29:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 251B41955D5F
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 17:29:06 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-37-lwuCs4RSMbiWvCoIi38efQ-1; Wed, 07 Aug 2024 13:29:03 -0400
X-MC-Unique: lwuCs4RSMbiWvCoIi38efQ-1
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3db51133978so93090b6e.3
        for <blinux-list@redhat.com>; Wed, 07 Aug 2024 10:29:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV/h+MXlW5XQljEqI7SVWR+cNW9o5wszmPdksTuT1xshq6jV1gGKmRvl4h2W3HSubpRYRAwBW+AbVeClgbSyRGapVDvsx3l
X-Received: by 2002:a05:6808:1394:b0:3d9:3337:d38a with SMTP id 5614622812f47-3db557ef89dmr24433929b6e.3.1723051742552;
        Wed, 07 Aug 2024 10:29:02 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db563748a2sm4263432b6e.24.2024.08.07.10.29.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Aug 2024 10:29:02 -0700 (PDT)
Message-ID: <5eeeb3ba-c8b0-4d4a-90b9-ecabf180abfe@gmail.com>
Date: Wed, 7 Aug 2024 12:29:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Lios
To: Rastislav Kish <rastislav.kish@protonmail.com>, blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
 <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
 <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
 <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
 <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
 <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
 <0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative;
 boundary="------------nOosQmF030NyBgbc4inzNZUl"
Content-Language: en-US
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.167.179 as
 permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

This is a multi-part message in MIME format.
--------------nOosQmF030NyBgbc4inzNZUl
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Rastislav

looks like the newest version, i just installed the latest Accessible=20
Coconut on a laptop and Lios was already installed

linux mint i believe i installed it using terminal

no matter which distro i am using having the same issue.

How do i report these issues?

Rodney


On 8/7/2024 06:05, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>
> Hello,
> which distribution of LIOS are you using?
> These issues shouldn't be a big deal, LIOS has a bit incomplete=20
> implementation of the scanner protocol, but when this happened on my=20
> machine I could fix it in the code and I believe I reported the issues=20
> and my solutions back.
>
> Best regards
>
> Rastislav
>
> D=C5=88a 6. 8. 2024 o 3:48 rodney jackson nap=C3=ADsal(a):
>> I am having issues with Lios, I am hoping someone can help me figure thi=
s out.
>> Scanner I have: epson perfection v39 ii
>> When trying to run Lios to scan documents
>> Lios sees the scanner but I get the error below:
>> Error I get:
>> 	Scanner update list error Object has no attribute max_y
>> I have tried this on Accessible Coconut and Linux mint as well as Debian=
 Bookworm
>> all other 3^rd    party scanning software on these machines have no issu=
es with scanning with this scanner
>> Any help will be greatly appreciated.
>> Rodney
>>
>>
>>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------nOosQmF030NyBgbc4inzNZUl
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Rastislav</p>
    <p>looks like the newest version, i just installed the latest
      Accessible Coconut on a laptop and Lios was already installed</p>
    <p>linux mint i believe i installed it using terminal</p>
    <p>no matter which distro i am using having the same issue.</p>
    <p>How do i report these issues?</p>
    <p>Rodney</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/7/2024 06:05, 'Rastislav Kish' via
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:blinux-list@redh=
at.com">blinux-list@redhat.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
      <p>Hello,<br>
        which distribution of LIOS are you using?<br>
        These issues shouldn't be a big deal, LIOS has a bit incomplete
        implementation of the scanner protocol, but when this happened
        on my machine I could fix it in the code and I believe I
        reported the issues and my solutions back.<br>
        <br>
        Best regards<br>
        <br>
        Rastislav<br>
        <br>
      </p>
      <div class=3D"moz-cite-prefix">D=C5=88a 6. 8. 2024 o 3:48 rodney jack=
son
        nap=C3=ADsal(a):<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com">
        <pre class=3D"western">I am having issues with Lios, I am hoping so=
meone can help me figure this out.
Scanner I have: epson perfection v39 ii
When trying to run Lios to scan documents
Lios sees the scanner but I get the error below:
Error I get:
	Scanner update list error Object has no attribute max_y
I have tried this on Accessible Coconut and Linux mint as well as Debian Bo=
okworm
all other 3<sup>rd</sup> party scanning software on these machines have no =
issues with scanning with this scanner
Any help will be greatly appreciated.
Rodney



</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------nOosQmF030NyBgbc4inzNZUl--

