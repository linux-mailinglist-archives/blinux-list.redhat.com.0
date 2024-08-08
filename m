Return-Path: <blinux-list+bncBDYIZZNASAHRBKXQ2O2QMGQEXZAX6FA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 4845E94C31B
	for <lists+blinux-list@lfdr.de>; Thu,  8 Aug 2024 18:54:04 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-709664a6285sf892699a34.3
        for <lists+blinux-list@lfdr.de>; Thu, 08 Aug 2024 09:54:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723136043; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vq2uLf7V7d/9YoZUBT0mPk6SQaMNKSZNjgEJtXJ/cXNvbGbe8DGBb/n7dma2K9Jh8a
         lVJU67+mXaZ1n5AAGbSyH0gBN+xT2pZPLaRy+41vyS8oovF7FTdpYQDP3sZsAX+7q7uQ
         2aRnEVclBwmormEvYtR+HC8ZM2davoTGAUzSstUHvmHmKnACNLVGKyBycg6xoaCW2i+3
         GJnWPNZ5S5EPKLf6W6QhN5lk0Qr/XMiOq428vjs3NdkKMzczWniAN0+/P128ASC5Nuff
         wN9/SnRagQj4KTs1+llHhdlBsk8NfjccrV2l0kKZjrk3o6wLejanyz8sG3brtVuyrI+2
         5cCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=yhfciEZxOTX1/Cvqd65X9gNZBNi3hveigoi3gatRne4=;
        fh=VMFdm7c81htdYnVQdxLodlUi/i6ady73ZGwO+gOGICw=;
        b=QTiu8AA2t0lmJNFw0oD/nbbcEuRNSjVuN2YwfZfUEc8wcJAOk7FixT3dzc2EVLgJqz
         MHJ3gHoAqsPMhIYQU/JkXtSj1NGxNK412ZgXXK5J3uam0cRlmiOr/LQVVMqSywZv75/D
         k+BLvuDjOgAnfN4exjQ89PRayIkApegzTGl80dhZVHCAET63uuf2kchy52hmBHnAtrQY
         YrG76DXb43nmMS7K62LYcbUnRM/uAn10Rl3I/CMHUytaW1GuIHxMbu4MudNpxYVDm4ua
         JO/fwnT3GPYulRtbDqsiUaZq1zBkmRPDejm/G1Phbqsn8faHk/vLi7qUevesnYvoUdcR
         lYHQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723136043; x=1723740843;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhfciEZxOTX1/Cvqd65X9gNZBNi3hveigoi3gatRne4=;
        b=BNy8BFl85cmlzcSr/o41RX0hbUUq8K0VBAGmSTIrZlA7WTyNflB6V7USjZunJy9/Z6
         PoY61Q5ZJuOUIjdzu0OKswTftkL+1fi1NhzcFeYpr0wIQ/Ol1/mx1D9ujEphDFTcW/N+
         VCfOHFM4kELC6U22jBN4wb1fmkqW//eOoQ5S/gicIddINX9ZlVBGDCNEzDHpDMrGBywq
         /ObhjfnX1cSNQKU9oiIvIFnkYioDYzB/zW+G6SiYGwUjHxvE+i9V8G7/Rf8rB6pfHzYM
         DwTOwICf/jI0ylaX9CfumT1mMzxoAsTDYtj2ARVVnyaf3sPrp/RIktCQjeFBlcEjaRgh
         t+Yg==
X-Forwarded-Encrypted: i=2; AJvYcCX03N164NyFBLR+vzQ5+wDURLwIAxuDHEcuJZXwmy1hutv3SovGdOGAJLx31OadNNeWjAN3CgFyNbTqy+2DNtsguxJ97IJ+bhRm
X-Gm-Message-State: AOJu0Ywnv2zoalnexK0CKZVMBqGHA/wTI+hC5tSivGdSMF0BMZapOG4p
	bV0v5DDZvsgdeJ5vAMzoJ/n4SKyTK8ONDFsUo1fyPEkAwi2H5peG2H9XjiN19XM=
X-Google-Smtp-Source: AGHT+IEnSFL/fATk0lEqHSdpCxHYrmrEFh7fBSYPvsydZXm8jUS8jJAmugyUzA1r9G/+yAzs0YjnKQ==
X-Received: by 2002:a05:6830:6408:b0:708:bea8:ae3f with SMTP id 46e09a7af769-70b4fc9f6f9mr3719329a34.25.1723136042897;
        Thu, 08 Aug 2024 09:54:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5ed0:b0:6bd:7218:a1a6 with SMTP id
 6a1803df08f44-6bd7218a2c5ls5839006d6.1.-pod-prod-09-us; Thu, 08 Aug 2024
 09:54:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWeFY8XGjtjV44fD9UzYjKP0fRDh/9NThmCf5P17F0HgCRlQxDvvAVRpcLTzDy5qZ04uAVp8d4kR9KcrbJNdVa1nziBhVvYAXCiGw3H
X-Received: by 2002:a05:6214:3f88:b0:6b5:468e:d417 with SMTP id 6a1803df08f44-6bd6bce6531mr33396546d6.23.1723136041496;
        Thu, 08 Aug 2024 09:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723136041; cv=none;
        d=google.com; s=arc-20160816;
        b=Y3/9E0hw5Qm8pC7gISHx+aun55x1Y//1EL7vkj57I6TUSfMoQ0Y8EzkVmWIRApxITU
         NnYl9/nYcYmbDLt8GqOlCOxE8/EiK9cdmndYnLQRByUH/VdQXARIi2/meChMuuAhSpqx
         neaxCDd3Kjs/edExHLATh17Bjv3nxZrYMMGzhdZdld+ELXo+x6NLLHw1Q3QgizOyWZ5j
         /Wjh54znDv8AEdQSjBrGaU2Pcpa/s3vayp/gA4N37YcN4N2l3DikWNDKtxPgf0qhMQxg
         ffu7bx9LCzDj3YxW+96RjifvpDCRu12HOggLJicKz3/q+HSc8qgoZVynVxKeM5rsMfZG
         YD3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=48Ul6WOFlWo0KVkjYTxX1MNpQGXW+kO17BY15Fjrbx0=;
        fh=6Tx0uRHCjcXlgLiQs17TxUZQ7e+rqz6tKezx/e8ZkJk=;
        b=kQHLOA9vCRFjLbBXj61pOSqnnCb1Pm30FJgChVuycvf9LuMh74/9kjhXZ18JtkvA1c
         JM4tfDtDdzHmzQo+PtNreZW+11yrltFt1G8HsN+V4MNYZpgB2froMaV5BD+4iRY6jX3T
         FocZnHJ59zRvn0EDFr3z9RKMUq64YDKr52CLn3tSBCzk5nljT58KvBRlXlj319+NDXfY
         jc9Dtym+lru0MKFgH/LUNlv687xJo5EyAyC617WqKEgXN9Zst8eHb5KFvwjanOrY1X8z
         igKocW8Pj+Z61RK5MfyNb48/VPSKb2D2Ora4H+qFXK2zqpWyMQzbBKlYq5gS0l0O3VqI
         Aolw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bbbb73b56fsi49483376d6.146.2024.08.08.09.54.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 09:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted sender) client-ip=209.85.210.45;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-433-8GDNn-nDPy2IaPfNanwD1w-1; Thu,
 08 Aug 2024 12:53:59 -0400
X-MC-Unique: 8GDNn-nDPy2IaPfNanwD1w-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E6648195608A
	for <blinux-list@gapps.redhat.com>; Thu,  8 Aug 2024 16:53:58 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E1227195917A; Thu,  8 Aug 2024 16:53:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DE60D1959177
	for <blinux-list@redhat.com>; Thu,  8 Aug 2024 16:53:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 683CC195608A
	for <blinux-list@redhat.com>; Thu,  8 Aug 2024 16:53:58 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-53-tOQFX1qHPTCWHZE9wOPfxw-1; Thu, 08 Aug 2024 12:53:55 -0400
X-MC-Unique: tOQFX1qHPTCWHZE9wOPfxw-1
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7093f6adc4aso508389a34.3
        for <blinux-list@redhat.com>; Thu, 08 Aug 2024 09:53:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUJCzdckpodGcdDQMuKX/aKNT+lZTfn0p+xzO61O8qRpoJjZ6PVcPZm/GZ2A6nkeZMnkwxgz6xxIkIbqh6r65thWeQxG3IR
X-Received: by 2002:a05:6870:d625:b0:261:119f:7560 with SMTP id 586e51a60fabf-2692b7aa37bmr2867996fac.31.1723136034974;
        Thu, 08 Aug 2024 09:53:54 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70a31d9df69sm5547595a34.13.2024.08.08.09.53.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 09:53:54 -0700 (PDT)
Message-ID: <02e39860-44a4-4ed8-9ff6-4fb4875cef79@gmail.com>
Date: Thu, 8 Aug 2024 11:53:52 -0500
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
 <8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com>
 <bb57aa41-fa00-4cfe-a367-1a7a50251211@protonmail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <bb57aa41-fa00-4cfe-a367-1a7a50251211@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative;
 boundary="------------yIH56CMh4Y0EkvBEmRv0OOut"
Content-Language: en-US
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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
--------------yIH56CMh4Y0EkvBEmRv0OOut
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Rastislav

thanks for this.

i will look over all this stuff and see if i can figure it out.

it would be great if i can get LIOS to work for me.

do you know if there are scanners that are more compatible with LIOS?

Rodney


On 8/7/2024 18:43, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>
> Hello Rodney,
> the official repository of the LIOS project is here:
> https://github.com/zendalona/lios
>
> I have forked it and applied my fixes I made some time ago for my HP=20
> laserjet scanner.
> https://github.com/RastislavKish/lios
>
> See the scanimageDriverFix branch. If you=E2=80=99d like to try it out, t=
here=20
> are two ways to do it, the more complicated but correct and simpler=20
> but hacky.
>
> The more complicated is to get rid of your current lios installation=20
> (this is necessary to avoid package collisions) and install the=20
> program from the fix branch of my repository:
>
> |git clone https://github.com/RastislavKish/lios cd lios git switch=20
> scanimageDriverFix |
>
> And install from source according to the documentation.
>
> Don=E2=80=99t forget to select scanimage driver to be used in the LIOS se=
ttings.
>
> However, there is a simpler way. The fix basically deals with just one=20
> file, and synce Python programs are not compiled, you can swap it out=20
> for the modified version in the existing installation and make it work=20
> this way. No need to uninstall your current setup and it=E2=80=99s relati=
vely=20
> quick.
>
> In order to do this, you first need to locate where did your system=20
> install the lios python package. It likely resides in one of the=20
> python=E2=80=99s dist-packages or site-packages directories, check=20
> /usr/lib/pytho, /usr/local/lib/python etc. When you find the=20
> directory, the file you=E2=80=99re looking for is=20
> ./scanner/scanimage_driver.py <http://driver.py>
> Clone my repository like mentioned above, don=E2=80=99t forget to switch =
the=20
> branch i.e.
>
> |git clone https://github.com/RastislavKish/lios cd lios git switch=20
> scanimageDriverFix |
>
> And swap the scanimage_driver.py <http://driver.py>. You will likely=20
> need to do this as a root since LIOS is usually installed in a=20
> read-only directory.
>
> Also make sure to select scanimage as the scanning driver in the LIOS=20
> settings.
>
> I=E2=80=99m not promising anything, as I mentioned before this was a simp=
le=20
> fix intended to make the program work with my scanner, but maybe it=20
> will work for you too, the problem seems similar.
>
> Best regards
>
> Rastislav
>
> D=C5=88a 7. 8. 2024 o 21:37 rodney jackson nap=C3=ADsal(a):
>>
>> Rastislav
>>
>> I logged into my linux mint machine and the version of LIOS is 2.8
>>
>> Rodney
>>
>> On 8/7/2024 06:05, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>>
>>> Hello,
>>> which distribution of LIOS are you using?
>>> These issues shouldn't be a big deal, LIOS has a bit incomplete=20
>>> implementation of the scanner protocol, but when this happened on my=20
>>> machine I could fix it in the code and I believe I reported the=20
>>> issues and my solutions back.
>>>
>>> Best regards
>>>
>>> Rastislav
>>>
>>> D=C5=88a 6. 8. 2024 o 3:48 rodney jackson nap=C3=ADsal(a):
>>>> I am having issues with Lios, I am hoping someone can help me figure t=
his out.
>>>> Scanner I have: epson perfection v39 ii
>>>> When trying to run Lios to scan documents
>>>> Lios sees the scanner but I get the error below:
>>>> Error I get:
>>>> Scanner update list error Object has no attribute max_y
>>>> I have tried this on Accessible Coconut and Linux mint as well as Debi=
an Bookworm
>>>> all other 3^rd    party scanning software on these machines have no is=
sues with scanning with this scanner
>>>> Any help will be greatly appreciated.
>>>> Rodney
>>>>
>>>>
>>>>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------yIH56CMh4Y0EkvBEmRv0OOut
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
    <p>thanks for this.</p>
    <p>i will look over all this stuff and see if i can figure it out.</p>
    <p>it would be great if i can get LIOS to work for me.<br>
    </p>
    <p>do you know if there are scanners that are more compatible with
      LIOS?</p>
    <p>Rodney</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/7/2024 18:43, 'Rastislav Kish' via
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:blinux-list@redh=
at.com">blinux-list@redhat.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:bb57aa41-fa00-4cfe-a367-1a7a50251211@protonmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
      <div class=3D"markdown-here-wrapper" data-md-url=3D"" style=3D"">
        <p style=3D"margin: 0px 0px 1.2em !important;">Hello Rodney,<br>
          the official repository of the LIOS project is here:<br>
          <a href=3D"https://github.com/zendalona/lios"
            class=3D"moz-txt-link-freetext" moz-do-not-send=3D"true">https:=
//github.com/zendalona/lios</a></p>
        <p style=3D"margin: 0px 0px 1.2em !important;">I have forked it
          and applied my fixes I made some time ago for my HP laserjet
          scanner.<br>
          <a href=3D"https://github.com/RastislavKish/lios"
            class=3D"moz-txt-link-freetext" moz-do-not-send=3D"true">https:=
//github.com/RastislavKish/lios</a></p>
        <p style=3D"margin: 0px 0px 1.2em !important;">See the
          scanimageDriverFix branch. If you=E2=80=99d like to try it out, t=
here
          are two ways to do it, the more complicated but correct and
          simpler but hacky.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">The more
          complicated is to get rid of your current lios installation
          (this is necessary to avoid package collisions) and install
          the program from the fix branch of my repository:</p>
        <pre
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;font-size: =
1em; line-height: 1.2em;margin: 1.2em 0px;"><code
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;margin: 0px=
 0.15em; padding: 0px 0.3em; white-space: pre-wrap; font-weight: 550; backg=
round-color: rgba(119, 119, 119, 0.3); border-radius: 3px; display: inline;=
white-space: pre; overflow: auto; border-radius: 3px; border: 1px solid rgb=
(204, 204, 204); padding: 0.5em 0.7em; display: block;">git clone <a
        class=3D"moz-txt-link-freetext"
        href=3D"https://github.com/RastislavKish/lios"
        moz-do-not-send=3D"true">https://github.com/RastislavKish/lios</a>
cd lios
git switch scanimageDriverFix
</code></pre>
        <p style=3D"margin: 0px 0px 1.2em !important;">And install from
          source according to the documentation.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Don=E2=80=99t forget=
 to
          select scanimage driver to be used in the LIOS settings.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">However, there is a
          simpler way. The fix basically deals with just one file, and
          synce Python programs are not compiled, you can swap it out
          for the modified version in the existing installation and make
          it work this way. No need to uninstall your current setup and
          it=E2=80=99s relatively quick.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">In order to do
          this, you first need to locate where did your system install
          the lios python package. It likely resides in one of the
          python=E2=80=99s dist-packages or site-packages directories, chec=
k
          /usr/lib/pytho, /usr/local/lib/python etc. When you find the
          directory, the file you=E2=80=99re looking for is ./scanner/scani=
mage_<a
            href=3D"http://driver.py" moz-do-not-send=3D"true">driver.py</a=
><br>
          Clone my repository like mentioned above, don=E2=80=99t forget to
          switch the branch i.e.</p>
        <pre
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;font-size: =
1em; line-height: 1.2em;margin: 1.2em 0px;"><code
style=3D"font-family: Consolas, Inconsolata, Courier, monospace;margin: 0px=
 0.15em; padding: 0px 0.3em; white-space: pre-wrap; font-weight: 550; backg=
round-color: rgba(119, 119, 119, 0.3); border-radius: 3px; display: inline;=
white-space: pre; overflow: auto; border-radius: 3px; border: 1px solid rgb=
(204, 204, 204); padding: 0.5em 0.7em; display: block;">git clone <a
        class=3D"moz-txt-link-freetext"
        href=3D"https://github.com/RastislavKish/lios"
        moz-do-not-send=3D"true">https://github.com/RastislavKish/lios</a>
cd lios
git switch scanimageDriverFix
</code></pre>
        <p style=3D"margin: 0px 0px 1.2em !important;">And swap the
          scanimage_<a href=3D"http://driver.py" moz-do-not-send=3D"true">d=
river.py</a>.
          You will likely need to do this as a root since LIOS is
          usually installed in a read-only directory.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Also make sure to
          select scanimage as the scanning driver in the LIOS settings.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">I=E2=80=99m not prom=
ising
          anything, as I mentioned before this was a simple fix intended
          to make the program work with my scanner, but maybe it will
          work for you too, the problem seems similar.</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Best regards</p>
        <p style=3D"margin: 0px 0px 1.2em !important;">Rastislav</p>
        <div class=3D"markdown-here-exclude">
          <div class=3D"moz-cite-prefix">D=C5=88a 7. 8. 2024 o 21:37 rodney
            jackson nap=C3=ADsal(a):<br>
          </div>
        </div>
        <div class=3D"markdown-here-exclude">
          <blockquote type=3D"cite"
            cite=3D"mid:8107ca73-f5e8-4bc5-9e83-2460c0cc4ddb@gmail.com">
            <p>Rastislav</p>
            <p>I logged into my linux mint machine and the version of
              LIOS is 2.8</p>
            <p>Rodney<br>
            </p>
            <div class=3D"moz-cite-prefix">On 8/7/2024 06:05, 'Rastislav
              Kish' via <a
                class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                href=3D"mailto:blinux-list@redhat.com"
                moz-do-not-send=3D"true">blinux-list@redhat.com</a> wrote:<=
br>
            </div>
            <blockquote type=3D"cite"
cite=3D"mid:0048a573-8a71-4fe9-9445-07d463c69b69@protonmail.com">
              <p>Hello,<br>
                which distribution of LIOS are you using?<br>
                These issues shouldn't be a big deal, LIOS has a bit
                incomplete implementation of the scanner protocol, but
                when this happened on my machine I could fix it in the
                code and I believe I reported the issues and my
                solutions back.<br>
                <br>
                Best regards<br>
                <br>
                Rastislav<br>
                <br>
              </p>
              <div class=3D"moz-cite-prefix">D=C5=88a 6. 8. 2024 o 3:48 rod=
ney
                jackson nap=C3=ADsal(a):<br>
              </div>
              <blockquote type=3D"cite"
cite=3D"mid:9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com">
                <pre class=3D"western">I am having issues with Lios, I am h=
oping someone can help me figure this out.
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
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------yIH56CMh4Y0EkvBEmRv0OOut--

