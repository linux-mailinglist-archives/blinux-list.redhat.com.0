Return-Path: <blinux-list+bncBCM2V5WE3MDBBXNDYG3QMGQEJ6ZNSQQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 3782797E2B0
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 19:20:31 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6c5a32ec301sf55445156d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 10:20:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727025630; cv=pass;
        d=google.com; s=arc-20240605;
        b=Gb8SjUCOPVCaUQyrMConJlCzL8feTxhLUc9OamLwamwvnko6dlmRdSD691rm5dYIXE
         tOforHZfT8sVEqEQ0J9IeYl/nmbbwg3VZQ/TomSEeVYTFxIeiQilnsdtk5Pva/nRf2lt
         K0jN5j6o4X43jH1BK+TUNeBcJVTo66xDGSH7iHVAykpQh8TyR9VIHIccreHOGfwQrqRj
         tCtxx3e9Eez50fSmdbIBQJ6ZiEkRIFlOD9+UEC9cwSyNU+5JrMpogfz5m/+m65O0GT7k
         HfGex1vDqe/kXsV5p7B+P4x7CMBmq+tK9OsoukKJcWgTXF088gDmmOi4s7vx1m6SpqhR
         jfBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=47OgcyyXQfJr/k3/EklGCtSaFK2BJniN07VeWPauHAg=;
        fh=cmfPDFDPIz8gq/YrkKPGdqGJPWmYzrdPXAxYcHPzHk0=;
        b=ELdPsNzQyUJJwfKOcJkJNCvjHOb1Z0lc7mk+NNbm5MIgrfQCVGwqdUDghw35EKC3gi
         RWk2jpJT5kA4n9e+wwryetQ8KGx9eF2ZT9Vr2cLzIwp4WpvZ9/rKhuMaSqts9b5jUojc
         /mv7lfCPpvszNU1tY7SzTpXwiqDzVw9anqHNud6R21NM7eXYuTVP5Nf9m688VpLS5tW4
         1COPGbiWveSW7kK3eVm9+wEREjueZ5A30UxTb3utx6ppcApRcn5TCfvJrP9eS2jdXGTy
         5Gbgyf660adzgUMj8PiMe6h/Hk6XYNUTJSfEYNcmacYoA1Qu6GKczrJqrVKFplhbkVL2
         wVKg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727025630; x=1727630430;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47OgcyyXQfJr/k3/EklGCtSaFK2BJniN07VeWPauHAg=;
        b=m0ZDTOyaU3UOVJVV9ICNhS1a07v8XZY15s88MoxHO25xFIXIQr0faI8zGzq8S5Mkgy
         SVxvM9Xo4H4cGA5sjRIbmSIimu88hxYIBt0Pe5qxoC+6lBpN5Og5ul/AC0kuVev97own
         PZtLJf2/T8XFvfO5hGZmIka84D1bj/lGcUkVTIbTC1MKmXGk63g2E4aJxP3O/fxsKKck
         W/VKqi6exIT2vCzaA13nhY22XZfwLkKBkk3GQa4GLYG3a1IvkForXFN2Sor//mmg3G2R
         8y5dwidow+hg6b4B+VsPlm52XmY7U924CErYy1nPZlLIDjADrbdH3oRVRa1u44ytPtBa
         UI8A==
X-Forwarded-Encrypted: i=2; AJvYcCUom2kmKWOWlIf1w41uz0e91MQJbGv0TTx5T18EgOrGnw5PX+ExsF37ZqeRaitRJYEoJl0u2w==@lfdr.de
X-Gm-Message-State: AOJu0Yy6LXI5LLY1JeNHjUmSthGXRKpv6pV8eYWP64pnWOXF6epEPIbo
	pdqAP5WJXZ66srtVOFV65grUWhjsJ5rN0AAgMxDhd+EWo3yQac1bTKdyWcCzvu4=
X-Google-Smtp-Source: AGHT+IFNVEjK9fsnzoxy930ONr/5iQG06eK/IOYC95D4x/1W8wDcY4sOl9Ac13XoQV6GYT9D/eDxvA==
X-Received: by 2002:a05:6214:3c8c:b0:6c5:8a85:19f4 with SMTP id 6a1803df08f44-6c7bc83f485mr119084506d6.53.1727025629921;
        Sun, 22 Sep 2024 10:20:29 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5fc6:0:b0:6b7:9a07:4191 with SMTP id 6a1803df08f44-6c6a7f58157ls4904666d6.2.-pod-prod-01-us;
 Sun, 22 Sep 2024 10:20:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWlB1K5baeL1xrf8/mBaIttl1aM0YuPw7jzwyrGPRoTIaXW+EiwoicB56HgOgMty5OVSkrEwPjXTX129w==@gapps.redhat.com
X-Received: by 2002:a05:6214:3103:b0:6c5:7c63:f81f with SMTP id 6a1803df08f44-6c7bc7c4a80mr125597026d6.42.1727025628816;
        Sun, 22 Sep 2024 10:20:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727025628; cv=none;
        d=google.com; s=arc-20240605;
        b=hhCnc0tDufjqBYUU+Gnho/VlSEMvyQYILyvRIANTwajb1UYz9iIwNA4S7mhzHQiISu
         eTYTBJlwCZNdK9HIa+mvVRAK53gnD5KowyM5s7rFow/F0KwS3qleYRkxSAIFYUmfrb5J
         MCixLDga1NbVEht4dc8BiWlAvUMrz1b1Qmky0IFNQjl4eZSZ8KXPB71JxYuv0MTpSH8m
         v9epQsG1oOI9PB8tQapjI9ov6B5sXwxMa8t0zMqd5jm3yrAtmI+L3+PpxS5OxIHTWRC/
         e7txi0dx6Oya5U3EnfzZJozsCi0cw6+w1JxpoS2Tc8RqqwYKMhCq6B99TItAu/594A5D
         PipQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=pbStYFbSxKBtgfoBIgVZKc6WWz7ojL02PVHx06IKWBM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=aiAaR2nNvLgptUDKvwVcgXeOxyexH9QtnHvqJIRn+Z77bW8zg5fYf053D1sS47C9Ir
         kX2sHU8Wv6KcGlU/OSjhF+39bNCLaXlMXleIuh9m4uOdyQLayd3S+i59heYMmr4TSJaZ
         HF5roh9o8x6AclVgRYQOZqtNUCvYyMx2tuI+4Hi9qmg22sRNjJv5FwANg2Lcl9gyj7ZJ
         ESfCCoWWqiLcMnfLXgjK9y/SYbj/mceH9p04Ne6ltaBRYWD+vYX1maehs147fhIyzNGe
         6thx9d4WZuEevZuJe0H3qEQ/Ck+6dE74c1vs6mZO0EvjYHVI4eE75wvuB8zYLIqfJhwj
         73XQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c75e583f13si87672496d6.371.2024.09.22.10.20.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 10:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-655-yJSApPtHNb-Bo1Al-HIe_Q-1; Sun,
 22 Sep 2024 13:20:27 -0400
X-MC-Unique: yJSApPtHNb-Bo1Al-HIe_Q-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A75431921EED
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 17:20:26 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A4A383000235; Sun, 22 Sep 2024 17:20:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A1D5230001A4
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 17:20:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2665E1934BEE
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 17:20:26 +0000 (UTC)
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch
 [185.70.40.134]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-523-DvBFR-cHM5KVI6uWTL_CdA-1; Sun, 22 Sep 2024 13:20:23 -0400
X-MC-Unique: DvBFR-cHM5KVI6uWTL_CdA-1
Date: Sun, 22 Sep 2024 17:20:19 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: UMAI 0.5: Welcome on Ubuntu Mate 24.04
Message-ID: <3faf61d4-7b38-41a4-9605-3c2ec10033be@protonmail.com>
In-Reply-To: <e48d68e3-f0b2-42fc-8ebb-b1941cd331e5@slint.fr>
References: <ab803beb-ce5a-4c30-ba7e-41e24594202b@protonmail.com> <e48d68e3-f0b2-42fc-8ebb-b1941cd331e5@slint.fr>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 2752e7801adce943927006a8d22d693cde74ccb6
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted
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

hello Didier,
thanks for the comment! The thing is, in UM 22.04, everything was=20
working okay with Arctica and Orca, in fact, it was working quite well=20
until 23.10, 24.04 is the release which has broken several things. Orca=20
having problems after session start is Mate 1.28 bug, that needs to be=20
fixed on the DE level, I don't know yet the cause of the Arctica problem=20
so I can not comment further in this regard yet. And well, the Flutter=20
installer is very new, so it still needs some love, just like Flutter=20
itself.

Ubuntu 22.04 is really outdated. I myself am still on the previous LTS=20
and I'm miles behind the current Orca development, there are many web=20
bugs which are fixed in the new Orca, many new features, and also atspi=20
is undergoing some serious changes, which are not reflected in=C2=A0 the ol=
d=20
Ubuntu and prevent Orca from being upgraded.

But overal, personally I'm not a big fan of a11y specialized distros.=20
I'm not discouraging people who are, it's everybody's personal opinion=20
what suits them the best, and my point of view is the best approach for=20
stable, good and uptodate experience is staying as close to the=20
mainstream as possible. And UMAI is a tool making this task easily=20
available for everyone, from novices to seasoned users.

Best regards

Rastislav

D=C5=88a 22. 9. 2024 o 18:55 Didier Spaier nap=C3=ADsal(a):
> Hello Ratislav,
>
> I just checked: Accessible Coconut is way better than Ubuntu Mate 24.04 f=
rom an
> accessibility stand point IMHO. It is fully accessible with speech out of=
 the
> box including in the Arctica lightdm greeter.
>
> Further, you can switch from graphical to console mode (pressing for inst=
ance
> ctrl+alt+f2) and have speech there (using fenrir in their case), which la=
st I
> checked Slint can do but not Ubuntu (at least not Debian) out of the box.
>
> Granted it's currently based on Ubuntu 22.04 (Jammy) including orca 42.0 =
but
> that doesn't seem to bother its users.
>
> Maybe you could install it to check and port some of their custom setting=
s and
> installed software in your umai script?
>
> Cheers,
> Didier
>
>
> Le 9/22/24 =C3=A0 14:31, 'Rastislav Kish' via blinux-list@redhat.com a =
=C3=A9crit=C2=A0:
>> Hello everyone,
>> today I decided to finally release my accessibility improving script
>> <https://github.com/RastislavKish/umai> for Ubuntu Mate 24.04. I=E2=80=
=99m not entirely
>> satisfied with certain things, mostly Orca not starting on the login scr=
een
>> despite an explicit configuration of Arctica to launch it, but the rest =
of
>> things seem to be pretty okay. Plus we have the new workaround for Orca =
not
>> starting after session login because of Mate bug (this affects all other=
 Mate
>> distros btw, like Fedora).
>> Speaking of the Redhat distro, I=E2=80=99m seriously considering writing=
 a Fedora
>> version of UMAI. The thing is, the new Flutter based installer which UM =
uses is
>> something=E2=80=A6 I can deal with as someone who has gone through count=
less Linux
>> installation processes, like many of us, but I=E2=80=99m not sure how co=
nvincing would
>> the experience be for an entirely new user, who, in addition, may not ev=
en be
>> used to work with flat review and know how to apply it.
>> Fedora has a really cute installer which is imo even better than Ubiquit=
y was,
>> GUI-wise, but many of the things it requires to setup after the initial
>> installation are likely to require quite a bit of GSettings research, su=
ch as
>> figuring out how to activate the advanced mate menu programmatically. Th=
us for
>> now, this stays an open thing.
>>
>> Anyway, if anyone decides to go with UM these days, anything else than 2=
4.04 is
>> pretty much obsolete from accessibility viewpoint. So, welcome on Ubuntu=
 Mate 24.04!
>>
>> Note: Automatic system upgrades to 24.04 are known to go bad for pretty =
much
>> everyone, blind or sighted, I would strongly encourage a clean installat=
ion if
>> you=E2=80=99re running an older version of the distro.
>>
>> Best regards
>>
>> Rastislav
>>
>> =E2=80=8B
>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email
>> to blinux-list+unsubscribe@redhat.com <mailto:blinux-list+unsubscribe@re=
dhat.com>.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

