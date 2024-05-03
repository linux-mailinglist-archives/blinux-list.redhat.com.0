Return-Path: <blinux-list+bncBCM2V5WE3MDBBGWO2WYQMGQE6QEUTBI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id E86718BB790
	for <lists+blinux-list@lfdr.de>; Sat,  4 May 2024 00:37:16 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6a0eff9efc1sf429806d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 15:37:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714775836; cv=pass;
        d=google.com; s=arc-20160816;
        b=NNPr0qdI4ug1WkGkV5dHxwcGFOw8XRHfs3n4jsu7cnNUQCElGKWhF+1CwZSSVnAGU/
         LbdZKqWEWVY2kQTishWpVjWA0sBVoBZ7q154tbnDgbb+mTVvRBXlGlTwKT2M34HjD6rK
         xh0+BkSFby7SJpCpCu1MDH7N/O3vH7mVxlETSqZZ9Paat5QMGjAc1rwpjJ4dCqUhMZuF
         kP4Az/DBLZJwBgbFW3s24mnPXQLJ4bh1HsWN16T5DI4hxBrFK4LcnvrYzJuNUNvlYSfW
         RyBdVD9pTbCDrXCnTktUszTnG/05ut0doFDpuK5Zxk3O4WX5vuL7hCy6ejTGlqI/JwzB
         rKAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=j46VlwcmgpgaXlqutdYQz9XjKNNOs1SsdnMIsBT97rc=;
        fh=q+xN37dZWcDkHxWK7sbVNb9yrmdEiq3e1kf5qMEKrqU=;
        b=tzb/nAgHYQWFtOqMARsHdQA4hr/YOpRqpjSe8te8/j/gYo6+1bySilrjzJVvgCVvOB
         ha5jSnUXGFE+H3XvFYX/Y20jfcfL5OUkQOEsCTU7jFuRPYCDT/UtwnZ6lW6MBMn+Ajd0
         WhSGcheyRXd0BDTHwHLiOxpgh1d9sRnwq+/WAcZLwIsf7Nh6+UEuupmOPMiqGI7WD6dR
         /ZXZtKcBxlQvOjPvVqQhs0aw0WrZxwok+P1H1XLEB9BcL1sdUknfAVKmwsiRQWxhdZGw
         nMQUhbRB0t7gftMIOsFz2TPhGjo5vvOzKa3nBndBshy9JIK0nfTx+2c836mnxw5XuiJJ
         79hQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714775836; x=1715380636;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j46VlwcmgpgaXlqutdYQz9XjKNNOs1SsdnMIsBT97rc=;
        b=nqtqzpkPV9IMh+avBPRKrznfhxjSTgW+EVdqqB11T/k2BqWlOMpKkCIwtjC9tKvi7i
         mdhdisdGpxPmu0TJYN1mfdWznf88QywlKIk6OuQTrC27ZwOfL6IUEERdX0dSouuAfpQJ
         eXtwN9iwlxPlE0rg1E3Dzv14GNDh70ud4/ZtTcDOPY/rye/ycSDPKHTIedGyiVf0DDT7
         LEEf08511Jlw5nQvMNHt5x4iZDFPCjaWH2JNQTkr34mVvHRgl6Xp4F0ItskdRZhO996g
         ZAXe4Ou8fXdn+8eNH7DNPXtsf2r5S83RoHbP3MXFXhF0KH6MTbvVj/k6uCvMiwcM9s6V
         +81w==
X-Forwarded-Encrypted: i=2; AJvYcCXo7u9GJsOfudgv62S9Z0w2+YWNLVFhrKNzbHYsbBXX4mLbQibxLHHuWtXMMYlEPSIcLO3QeOFF5G1R15GbY0pLW04FC67si+4t
X-Gm-Message-State: AOJu0Yyc+qcgN3GGBG7KhYju1cjCvMDgRUdBc+bNbI95dQFpemz/h8Or
	MUIvGeP/PmhNbZfBK2AXwPztknfKLgxChml/TALH8uWeS/Sdos0E/QwT33Ho1i4=
X-Google-Smtp-Source: AGHT+IHeLBUMDfCWVQb+AQsSk+3g4M38o3blSQVvMsQq8tgSheL4YLrXpYdOaBGQfQtZL9GJl7KkVA==
X-Received: by 2002:a05:6214:ca4:b0:69b:1c5c:28fb with SMTP id s4-20020a0562140ca400b0069b1c5c28fbmr4316589qvs.0.1714775835400;
        Fri, 03 May 2024 15:37:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:202d:b0:6a0:a990:ef72 with SMTP id
 6a1803df08f44-6a0fefd5ad7ls33616876d6.1.-pod-prod-08-us; Fri, 03 May 2024
 15:37:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVL0ZHIN+LvJ38fCKJRIGZzJPxUXZKXmPaaEzrjwE8bA6u2kMU97PYs1LZKUN5vM6pgfgYSR/2tohK6FTXrj+1O7OZWuWylstCgmGL2
X-Received: by 2002:a05:6214:21eb:b0:6a0:c922:5014 with SMTP id p11-20020a05621421eb00b006a0c9225014mr4039458qvj.21.1714775832938;
        Fri, 03 May 2024 15:37:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714775832; cv=none;
        d=google.com; s=arc-20160816;
        b=jULxwYqmeMhTzUxUQ7914w8fo8G2fy00AqXAwnyaIVDK7JPoS1txundXg0XQsOyKYw
         e4Y4AOR/Ga/nxWm8/sP/hrt52ozcc2TQTF95c1huW8sB4UMTAUmMxOijJSBS/y43oDxt
         VNzvOmjcLv8eHe88+8aUiUAFWIThxbknobSEQcWag2ob7TxMMk8/pdxTZj+oB/4f4aSX
         u7AHRvgB5In/ttD2lYDAuxOSrBQtRR4q5nFbvhvP9zSe0Yd05BZYq8tVK1N5u1FQvLWt
         C77XYnE2eb52J1JnENRI6wErsW/5tLax3/tkqqTuW+JlBxOEv4ebg/xjLrLb7pi7gm01
         XK2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=DDxJnL88iS+m7nH9XC9sLj/LpjNNAuc2CUt0rfsWpow=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Cd9dVr/omwDNDNnEz2I5W6ww1BY2pMmjlJe5d+5gIdFcWzsjgNptfzzWBpiSrRuHaT
         Csz0KW4DMFMBBOL8u7CqNjz/r27gFUa+hqcFWdJwA+iMbaQFKmHhiSBf2UBSct4Ozxjb
         cWc8B3NHUcOkJxYyP6ZMKTdQQ4BmOTVGk8OIJt3SXrdTPsUkb8iK/ogblJaZxNsXw1C1
         8IT3aDctKEnG8STCQ0Z02y05oLo84oowir5+/hH6/nv1N9zOUxGvQ/jCujWkpzRuTPaw
         p1RW98fRVjy0Z+pdY2ifIHwiepndRRJq8PzcFww4JpejH6LEioxtEw4DtXUHviBVqLBt
         AjpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id h11-20020ac8584b000000b0043ac98c7cbdsi4248272qth.358.2024.05.03.15.37.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 15:37:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-480-C4jIykOWPhuJyas055dR0g-1; Fri,
 03 May 2024 18:37:11 -0400
X-MC-Unique: C4jIykOWPhuJyas055dR0g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6755938000A0
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 22:37:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 64014112131D; Fri,  3 May 2024 22:37:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AD601121312
	for <blinux-list@redhat.com>; Fri,  3 May 2024 22:37:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C84951C031A8
	for <blinux-list@redhat.com>; Fri,  3 May 2024 22:37:10 +0000 (UTC)
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-225-XwY1Kx_rOK2a6f_4bccbjQ-1; Fri, 03 May 2024 18:37:08 -0400
X-MC-Unique: XwY1Kx_rOK2a6f_4bccbjQ-1
Date: Fri, 03 May 2024 22:37:02 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: nvda2 speech and debian install error
Message-ID: <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
In-Reply-To: <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi> <20240503123117.6vhsfjpfuhjgwxno@begin> <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi> <20240503125138.ccmtstpyuyyyyf3e@begin> <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi> <20240503130413.rxcx55qhjx64utco@begin> <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: ad397d181778521a1376bcef399349fd0cc55c6b
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello Elias,
nvda2speechd author here. Regarding the compilation error you got=20
earlier, I believe this is caused by the speech-dispatcher dependency in=20
the server's Cargo.toml, which seems to be still at 0.15.1 (while the=20
latest version is 0.16.0).
If you bump up the number and delete the Cargo.lock file, it should=20
compile just fine. It's a bit unfortunate situation, in my opinion, Rust=20
should have a from-scratch implemented crate for communication with=20
speech dispatcher, instead of relying on libspeechd-dev and causing=20
issues like these. I even wanted to write such a library, similar to the=20
lib I wrote for C#, but I was not yet in such a heavy need to do so,=20
thus we have what we have. :)

As for n2s usage, the server is a standard TUI app, it's pretty much=20
upto you how do you use it. You can run it temporarily in a terminal,=20
for example if you want to play a game, or, if your usage will be more=20
frequent, you can have it autostart upon your system boot up and then=20
there will be no need to do anything. The server has no output unless=20
something happens I believe, so if you start it up and it seemingly does=20
nothing, it likely works properly.
I think it prints out when a connection from clients is open/close, this=20
is a good functionality because when something goes wrong, you can=20
easily diagnose whether the clients and the server found each other and=20
it also works as a good confirmation the client was started in the first=20
place.

n2s has a default port that will be used, which is mentioned in the=20
readme. If the default port doesn't work for you for some reason, you=20
can change it by setting up an environment variable, see the readme=20
(don't forget to log out and back in after doing so to have it initialized)=
.

The reason why a variable is used instead of a flag or config file is=20
the need to communicate the settings to the clients, which can't accept=20
flags because they're just libraries (well technically, maybe they=20
could, now I'm not sure if dlls have access to the arguments of their=20
process, but even if they did, messing in flags and cmd parameters to=20
the interface of another apps would cause trouble in more situations=20
than those where it would have actually worked), and config files are=20
also tricky because one thing is your Linux FS and another the Wine=20
space, you may want to sandbox Wine apps, etc. so it's overall the=20
easiest option to just maintain an environment variable when necessary.

Best regards

Rastislav

D=C5=88a 3. 5. 2024 o 15:08 'Elias St=C3=A5hlberg' via blinux-list@redhat.c=
om=20
nap=C3=ADsal(a):
> yes, but e.g
> this command does nothing, the server has to be started somehow, or is
> it running all the time, I get the message command
> not found
>
> ws://localhost:3457
>
> On 5/3/24 16:04, Samuel Thibault wrote:
>> 'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 1=
5:57:53 +0300, a ecrit:
>>> I have now installed the required packages, but where do I set the port=
 and
>>> address of the server, how can I start the server, the command nvda2spe=
echd
>>> does nothing, command not found
>> I can only point at the readme file.
>>
>> Samuel
>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
>>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

