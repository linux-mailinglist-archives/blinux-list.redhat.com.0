Return-Path: <blinux-list+bncBCM2V5WE3MDBBXED3GYQMGQEHQGDZSI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EED8BBC56
	for <lists+blinux-list@lfdr.de>; Sat,  4 May 2024 16:10:37 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43ace079ba1sf8729451cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 04 May 2024 07:10:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714831836; cv=pass;
        d=google.com; s=arc-20160816;
        b=juf4yyk1ey8jkU0iJUrHKSzab+dKwi1jKKYIKR/A0XiKtXST9uB5TGD/WT/7YHvIDl
         GjetJj2U5BVVkhzQwG98AvIJZuDtvjfxnl15vMEOBXLoc+toAB/StstV1iMIeuLLHjJA
         PKmGMUWmbUprTxF+BQk/rEld3fF8seyn1WNIWVAikkF9q3JgIru1BF5KU64a5LiOAqJO
         jjtGgRQgZ1WOFy/NPCxPIVV8GAEvV4oxq4STXqQvbT5/UsU6JJhMVlS27ngSZR58QliS
         HqSrAQUvOmo0PCp50BzzSryLkhS4V3NKaGQ7gzIhrTE8VmxbY4dJ5NbjClz3Ee88QIMb
         Z9pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=44FVRPwlBrL9Dtu7Em+cCS/xzYlX/ONXiZnlxsZrg/U=;
        fh=gyf+1OcfjQ0kos5H1F9ZKNQWA+zDMi+S6DMIlljdZMM=;
        b=pNDXoX162Eam8vn2iQf074P4wl5K+tgrZ/BK1x5xv/3A1djUY9xw9ocwZNlrnwXcNx
         Dgb+pF/bXqbMizkCAG5P7mhnc94dq2JhLgPxOsRXumJ9nvkh4aW2nC0BmXb9wMszVY5p
         qzfJnIdPnEHmS6Vz8x1EDWtLcvQQO2Y54YT+job3ozmndw/U7uhf8XmcGh3uwGIHD9rU
         FSP/rDeHNHOmSDs4joKQL42ydj0cZz7IX5zUYJ6awAm5mwDfinLhTFE4bE030dAZhOFK
         Ml5lNtVIoOjjxt7th4ezIMdi9YCZsCc6Zr54IuO+cHGds224AQYeGXIbwkHiq0//hBma
         xtJA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714831836; x=1715436636;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44FVRPwlBrL9Dtu7Em+cCS/xzYlX/ONXiZnlxsZrg/U=;
        b=iZgkdreIBaeMIlkF3RkXX0S83VnBHkOMu8dlM2D3AKHxpSM0t4bA3z3fOdMa/0yLmi
         jSd43QhvjcVf6nd2/SpyrnjJ90IODocf2hgmgbYmAmynGQU581ee6mxd/03WvrpsAMWU
         kCvXRwxVUK9hNupQIWEVe6uSZHijZH3iDUBSokeYoE0TI13HIh7S/76CrHDWQ/86gbKX
         hQveT+5YRALBkqF5R+lX+EIeRu5AGoBNY2W1cqYxBc8dp3k5E6UZyE/S5jmqUHMbIzyb
         mbCmze9jmmzXKbhQa9n2MBwHJ+DtzQ6fiIHblxojBsimQveXw0rgbGN5gH5wqvxzv4Ic
         DXEA==
X-Forwarded-Encrypted: i=2; AJvYcCUIzrpAa3m+Kd9vQzGYK8rRC+Ltab8lsUXxIvUfs4SBobBNgUkXTSEyVRlzsxqmw56D24e8Uxv8fExVOzbv+swA4bmFSvuJLW0i
X-Gm-Message-State: AOJu0YwXRX0rwijOXYbjYr8VELB56VWDvdUc/g3D8+wSHTZGqeWXaeQo
	uuaO6s90KdWn8iRAD4r4RQ0jvQmIMQGLrkej1HRbbMGaLP2aCXxVtUCCouNRI6Q=
X-Google-Smtp-Source: AGHT+IEgjOFZp/o4Vfnyt+dUQ3iwuIKGaYxr6QpvWdlE2lKo9Tmg6+cO8hpAVRmhD7u6SZlXHAoYcQ==
X-Received: by 2002:a05:622a:50:b0:43a:f8d3:f4c4 with SMTP id y16-20020a05622a005000b0043af8d3f4c4mr6872747qtw.21.1714831836268;
        Sat, 04 May 2024 07:10:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:18a4:b0:43a:b543:e7da with SMTP id
 d75a77b69052e-43ca818f15els39582551cf.1.-pod-prod-04-us; Sat, 04 May 2024
 07:10:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXd5tUG8VcSMMqHOWH1mvuMxMGWUJiNDA0qlEsOEuBWi2QpPzMU3o2kNcTioP72wHT//hccxhScVnNb0Jp8JOqNPgSTNMhImjst4+8t
X-Received: by 2002:a05:6102:723:b0:47e:f6e6:a53a with SMTP id u3-20020a056102072300b0047ef6e6a53amr6131081vsg.19.1714831835493;
        Sat, 04 May 2024 07:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714831835; cv=none;
        d=google.com; s=arc-20160816;
        b=bKBsE2tHMZyjz/R3j6mEwHpg/GUhPKkJrkwxH8CctiM1por21jkgy84HD10jE7D6H1
         iHejVmecbfsUX7M9zgVgkmcAwVuN+/FZgQd+OcIJD9Hq3hb0JVg1vyLAdAWjU4lp3udK
         mlHX95Rzs2JGou1mxCyx7hRw4fo6Qesuzk8nIe73iMtkXPkg1DIYOp3HLM6I9MVHVa37
         fw5sLmUvlKmfsFMZq9n/lkMPccoO43LESCHq0D6QY4CS/pSEvQmyAiU4WwvhAVX78AWR
         yW/482FqiU+iB/Fl2gv/OUsGkAkGq9eIHJHnWEn8YaQf18MA6nzIm2p09MnV/dZaYxtg
         Cq4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=aQmKapf025GT8bf5TB7ZmjpULqiSEkAm+HVay5+X6/I=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UmHoeT6IOVBJUXq7Xl7g/zL042gXj7gSNoqC9RoTEDwi3/ykNclnka9yFjGt5lsnDD
         qrwA7aEIEKum+oSgqjC6GJSyW6qTSGmwmGIURw1i+T0+TQGcRWvodupZKKjKrGYlou0E
         uDJw+4MCdaI2JvK4HXeK7tyP5MpT++K5j/058Psh0rBb/heoTjqP5lajnFteUNc3Cg+4
         jl6dWXRr//geP6UWtf0W1S2ZEsC5Bs+n3fe56Ev/QYxidsoDN2vhABXgZc/lEJhO5qdZ
         dczmDxHr2X5bJ2HDk1ayVlOBXJNvV4XdV6V6wrEIew/a9w8H4wtcfib0JIy8HlmKXlm6
         XIiA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ib15-20020a0561022b8f00b0047be5a4dbaesi113768vsb.650.2024.05.04.07.10.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 07:10:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-342-OO1pdNTdOySlE7eyGNR8RQ-1; Sat,
 04 May 2024 10:10:34 -0400
X-MC-Unique: OO1pdNTdOySlE7eyGNR8RQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5FA11C04323
	for <blinux-list@gapps.redhat.com>; Sat,  4 May 2024 14:10:33 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C28A5112131D; Sat,  4 May 2024 14:10:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A4681121306
	for <blinux-list@redhat.com>; Sat,  4 May 2024 14:10:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A59D08059E0
	for <blinux-list@redhat.com>; Sat,  4 May 2024 14:10:32 +0000 (UTC)
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-326-GWfFyOGCMk2WE0D4vLkkSA-1; Sat, 04 May 2024 10:10:31 -0400
X-MC-Unique: GWfFyOGCMk2WE0D4vLkkSA-1
Date: Sat, 04 May 2024 14:10:23 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: nvda2 speech and debian install error
Message-ID: <87c6097d-443f-4202-877c-1ca1acdc7edd@protonmail.com>
In-Reply-To: <08f98aaf-e42e-40df-bc16-76822a05e000@harrastenurkka.fi>
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi> <20240503123117.6vhsfjpfuhjgwxno@begin> <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi> <20240503125138.ccmtstpyuyyyyf3e@begin> <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi> <20240503130413.rxcx55qhjx64utco@begin> <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi> <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com> <08f98aaf-e42e-40df-bc16-76822a05e000@harrastenurkka.fi>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 572971eed90cd3de624f31de72f7d9b384945106
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted
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

Hello,

I'm not sure which version of the library is packaged by Debian, but if=20
it's compiled using mingw, you may also need to include a dependency lib=20
together with the controller, see the compilation section of the readme.

Also watch the terminal whether connection is received by the server,=20
plus the game you're trying to get working needs to be set to use NVDA,=20
most do so automatically I believe but some (like Swamp) require you to=20
select the synthesiser manually.

Best regards

Rastislav

D=C5=88a 4. 5. 2024 o 15:46 Elias St=C3=A5hlberg nap=C3=ADsal(a):
> hi
>
> The server starts, I move nvda2speechd32.dll to the game folder, rename
> it nvdaControllerClient32.dll so it replaces the existing dll file, but
> still the orca specified via speech-dispatcher does not speak, I use
> audiogame manager, could it affect this.
>
> https://git.stormux.org/storm/audiogame-manager
>
> On 5/4/24 01:37, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>> Hello Elias,
>> nvda2speechd author here. Regarding the compilation error you got
>> earlier, I believe this is caused by the speech-dispatcher dependency in
>> the server's Cargo.toml, which seems to be still at 0.15.1 (while the
>> latest version is 0.16.0).
>> If you bump up the number and delete the Cargo.lock file, it should
>> compile just fine. It's a bit unfortunate situation, in my opinion, Rust
>> should have a from-scratch implemented crate for communication with
>> speech dispatcher, instead of relying on libspeechd-dev and causing
>> issues like these. I even wanted to write such a library, similar to the
>> lib I wrote for C#, but I was not yet in such a heavy need to do so,
>> thus we have what we have. :)
>>
>> As for n2s usage, the server is a standard TUI app, it's pretty much
>> upto you how do you use it. You can run it temporarily in a terminal,
>> for example if you want to play a game, or, if your usage will be more
>> frequent, you can have it autostart upon your system boot up and then
>> there will be no need to do anything. The server has no output unless
>> something happens I believe, so if you start it up and it seemingly does
>> nothing, it likely works properly.
>> I think it prints out when a connection from clients is open/close, this
>> is a good functionality because when something goes wrong, you can
>> easily diagnose whether the clients and the server found each other and
>> it also works as a good confirmation the client was started in the first
>> place.
>>
>> n2s has a default port that will be used, which is mentioned in the
>> readme. If the default port doesn't work for you for some reason, you
>> can change it by setting up an environment variable, see the readme
>> (don't forget to log out and back in after doing so to have it initializ=
ed).
>>
>> The reason why a variable is used instead of a flag or config file is
>> the need to communicate the settings to the clients, which can't accept
>> flags because they're just libraries (well technically, maybe they
>> could, now I'm not sure if dlls have access to the arguments of their
>> process, but even if they did, messing in flags and cmd parameters to
>> the interface of another apps would cause trouble in more situations
>> than those where it would have actually worked), and config files are
>> also tricky because one thing is your Linux FS and another the Wine
>> space, you may want to sandbox Wine apps, etc. so it's overall the
>> easiest option to just maintain an environment variable when necessary.
>>
>> Best regards
>>
>> Rastislav
>>
>> D=C5=88a 3. 5. 2024 o 15:08 'Elias St=C3=A5hlberg' via blinux-list@redha=
t.com
>> nap=C3=ADsal(a):
>>> yes, but e.g
>>> this command does nothing, the server has to be started somehow, or is
>>> it running all the time, I get the message command
>>> not found
>>>
>>> ws://localhost:3457
>>>
>>> On 5/3/24 16:04, Samuel Thibault wrote:
>>>> 'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024=
 15:57:53 +0300, a ecrit:
>>>>> I have now installed the required packages, but where do I set the po=
rt and
>>>>> address of the server, how can I start the server, the command nvda2s=
peechd
>>>>> does nothing, command not found
>>>> I can only point at the readme file.
>>>>
>>>> Samuel
>>>>
>>>> To unsubscribe from this group and stop receiving emails from it, send=
 an email to blinux-list+unsubscribe@redhat.com.
>>>>
>>> To unsubscribe from this group and stop receiving emails from it, send =
an email to blinux-list+unsubscribe@redhat.com.
>>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
>>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

