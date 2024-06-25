Return-Path: <blinux-list+bncBDM5DGHN5MHRBJMW5SZQMGQEJVN67IY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D6917017
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jun 2024 20:23:35 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4405b0b5720sf81177751cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 25 Jun 2024 11:23:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719339814; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBBd0iLJ2Z2w2+8Du4+n7RvYAXtPPYzeOreSBkFQWRSDQftBrjKUM+znQ0rK9doPAu
         7ei4fQdbOCRXMUw9pD0cpmZHkrMZi3aZEmqxe7Yj+/0QG8wKvnQM9iDWqA+3+EXfJ7HL
         xwDk+bHhatEXinUHfTECb6W6CWtfU0HL97cYjyn4zpX34KE6dY3+LyCN7UiX0TafOcMk
         63cyGjxfomd2EXXi0bq3H3I/GFhuGKNFdEkVchz/7pvPVUHTL2b2sy4myFmPQUS2LrPE
         iMfBMot2iNa/gSmxUJpoUVaf7EkAqgwDAIAaVwjC2sSV98RzkI2z86zzCNpMIBbeY9r0
         Nq6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :delivered-to;
        bh=6E6T7xAMQEWJ1riOfo3XMWIfYGMExA+lUEfAyWIBXfA=;
        fh=LiZZRZique13uC71ivMWmHhn2BWKbkmBQHHv0zVOnuk=;
        b=v0iO7GWsz18mcYFuX6m8RVowtvnUdEOVUQjQc3zOR0cD78hjdncvXjI52x9DA+WlSS
         n4wUIZ0F9eFKaUvmNaoQgDSoygSmq7BqIRn3VKIE/8dDKlSs8RZccYRhp0K51L0Yf46P
         9HByNwIYk2CtQJzu4oHiWEqef71Tpy2xKELtrqu89TsnrIzVtbkMZG05RTZejqmvT8AL
         rR9C+sFCb/OamzibRim9wGYMjYXUERQCTLB5JTh0l8b60ySqoKDZC4WCsEMO9OHpJ2aL
         41CO2BKplK6WEhZbl+U8OW9N/9VmgmYw12sDYIFFkYkWJrZNDHoat8KoRyyV7QHuheC6
         MlYg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719339814; x=1719944614;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6E6T7xAMQEWJ1riOfo3XMWIfYGMExA+lUEfAyWIBXfA=;
        b=hvhzIqEnTn2NRNoZSNeiEYA5/GVuTIKNjXGF+J+2yEFOFd6dy2j8LCAAhmLi5UzO10
         pybmFd3Ob0eLrpe0n8w3p12Rqgneh2Sd4kAEfnLcSJapDNuvdILGLdyCN3h3lSysj0C3
         YXo50tzbopd/TNspFYfHFEtyR8TR68D34K0SJ1FP1dFlbQ2OhswA+Wkjj/uxs2xZ/Tw0
         CYiRp+Vat9C4aUcEhyBgjaClRQuPDHLqbpBzYrTJEVwJ4jIBjY5pFzyBHPnSkOEE0ElX
         oVT1S7e6/DLXr6tST+ZZcmiT5WvHWoQThu9Sdq7BGomNoiZWWEfIbCsoMw2ypCTIFKZT
         BFiQ==
X-Forwarded-Encrypted: i=2; AJvYcCUEzT+XBDUzMbnIW2My2BmCjZZrqPIV9oMkXeMCjrU9pWuduu6UhhtYmJ09Kr/soHdj4+q09XEHL1k4YDkqtmJmZ+gdGtOzLLq5
X-Gm-Message-State: AOJu0Yxnc9NU8xN41dMxshi/tG7ofM6hkzjtrqFACi4e32Ocm2i0PRH8
	39Z4KHAwP4qWjWJGcUnvByXqRNPneTQSTsJT40xe2zfMM8tCATek65tW58JqXlY=
X-Google-Smtp-Source: AGHT+IHKpPuRbKC0SgvEJDTHXX9lTL6ps87RdP5tqyM/6oGyJgBZeV/7jVuE1kDXyFnMouxd0pGMtQ==
X-Received: by 2002:ac8:5a0c:0:b0:439:b41a:56c1 with SMTP id d75a77b69052e-444d64a1acbmr109367671cf.34.1719339813820;
        Tue, 25 Jun 2024 11:23:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5f82:0:b0:444:b79e:50cf with SMTP id d75a77b69052e-444b79e7702ls79360471cf.0.-pod-prod-03-us;
 Tue, 25 Jun 2024 11:23:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWoyeoRGyvrMEY7SfP3pQ4Wte19EAZtIV3IkTVCmTYLreRIBYb7NsKJHkhDQKDe5xR21rR9XVlYg9uojdjVvU/CT7oC2vsa8mkzZI3b
X-Received: by 2002:a05:620a:40c3:b0:795:50f9:532 with SMTP id af79cd13be357-79be46d2df3mr1172683185a.26.1719339812473;
        Tue, 25 Jun 2024 11:23:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719339812; cv=none;
        d=google.com; s=arc-20160816;
        b=Kwq9LSlydzVJ1jYV/enh79PZLj1vG/+i3pdK+Sw3pCqozStAuqeobwWPHBIen48fDU
         VfL6op8w5FzlNPC653Aq8Gw1Otp+txtmFX9UcBLUA+BMDdeaml9xSXlrPZzHIEaOMMSv
         c1nKedEqehrvbO0jKkXdMMyXsYRNpc5HWOkKtY6JRu9X+JARLXcN1Eh+5r724kTIOVHA
         yzfTAaNnET3zY/IULOcEspB8GreEKFEtwFIwaNy5CDA5PrIPPtLD4l1pcGxMYes7RAJV
         3lX0jhwWdiJeGSQxHx/Du+BxI2rk+OtJr4h9tEnvkxlrnx5GBLiT5ZIA+u//COmoUpfL
         tEQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:delivered-to;
        bh=7/ISoQXEcONMu/UP61+4BPElimuYOvWS2Qi9Lu7jgL0=;
        fh=7gvZLSrLc2oPzO9xYS7vWUEC0v5GETFXP5vDi2XNVtw=;
        b=BaTfBpaSIPumfzjVYcMPkXUxnqgf2RzljLkWEhq20QclGY28fBCA9UNWGnHGZHktLP
         myJwssZDAc/NyCT4/1Ju0/raQO06+jnun9n8zRLFK9kwvgmwTV4Q9m6k86jK1PBoxPan
         meVOM8cPH4bYrwzBg/KQ///iS+Gn+TUQ81OwNRacQVvgCAqWLfs5xbdv29RAvO4M+B0e
         Xev6DUOAPD0fGYaKHrQnxyOBuD9mHGhdSj9SUtfbfVgdTeuuKDSwwiMMwcqVYojtU49P
         sqO6MvMjkEAiQIc1sJkUdw241eQVRl3x970yW8++KKDcTw12OwMG5/sLLI2+xvaTwHdV
         gRBw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-79bce914237si1126834685a.340.2024.06.25.11.23.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 11:23:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.167.170 as permitted sender) client-ip=209.85.167.170;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-671-Q5qvZ4oZNWO01CBKbdpchA-1; Tue,
 25 Jun 2024 14:23:27 -0400
X-MC-Unique: Q5qvZ4oZNWO01CBKbdpchA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1262019560B1
	for <blinux-list@gapps.redhat.com>; Tue, 25 Jun 2024 18:23:27 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0333219560B6; Tue, 25 Jun 2024 18:23:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F01C619560B1
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 18:23:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 73A2819560B1
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 18:23:26 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-351-wOe9MGobP9qM5eIhCW8XJA-1; Tue, 25 Jun 2024 14:23:22 -0400
X-MC-Unique: wOe9MGobP9qM5eIhCW8XJA-1
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3d55c0fadd2so433598b6e.3
        for <blinux-list@redhat.com>; Tue, 25 Jun 2024 11:23:22 -0700 (PDT)
X-Received: by 2002:a05:6808:221a:b0:3d2:22bc:d283 with SMTP id 5614622812f47-3d543b87588mr10119080b6e.52.1719339801053;
        Tue, 25 Jun 2024 11:23:21 -0700 (PDT)
Received: from smtpclient.apple ([2603:6011:ba01:8300:8549:69bd:162c:1d22])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44501ee383esm4044151cf.5.2024.06.25.11.23.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Jun 2024 11:23:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: archlinux installation
From: matthew dyer <ilovecountrymusic483@gmail.com>
In-Reply-To: <fb8e580f-7545-54ca-58fc-e4f5d1b7b43d@panix.com>
Date: Tue, 25 Jun 2024 14:23:09 -0400
Cc: Blind Linux <blinux-list@redhat.com>
Message-Id: <8043012E-2C94-4583-A064-2B0B189C9046@gmail.com>
References: <fb8e580f-7545-54ca-58fc-e4f5d1b7b43d@panix.com>
To: Jude DaShiell <jdashiel@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ilovecountrymusic483@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ilovecountrymusic483@gmail.com designates 209.85.167.170 as
 permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
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

So if you install without a sound server, do you just install the sound ser=
ver after the system is installed?  Just wondered this should be clearly st=
ated.  Thanks.



> On Jun 24, 2024, at 10:09=E2=80=AFPM, Jude DaShiell <jdashiel@panix.com> =
wrote:
>=20
> If using archinstall, hit the gray star key once to turn highlight
> tracking on before starting up archinstall.  When you get down to the
> choice offering a sound server, don't do it since whether you install
> pipewire or pulseaudio both sound servers give you a silent reboot withou=
t
> espeakup running or if espeakup is running it's running very quietly no
> matter what volume you have set on those speakers.
>=20
>=20
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

