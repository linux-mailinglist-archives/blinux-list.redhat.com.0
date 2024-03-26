Return-Path: <blinux-list+bncBDYPVTOXSQEBBF7ORKYAMGQEBBEWNPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id EF85C88C149
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 12:52:56 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6966412d4dbsf56192076d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 04:52:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711453976; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+xrTX/izSzLDgJS0goIH10dldxVt2EnpKzp6CAgHQjoUPcyasJ49jBNheyzDBFDLP
         z26hMQKvRgJ93glStdA8REpwH+g3nJg8nzHtTxMUiBoXOlb3oVy1q8Ul6pJc2mfIQltJ
         sfKi03X8ua/z0hfOAb1NEOUxFig+F++QLZYMuOQeuBz2BjX3aeQhXz8ZUmBj8L9C+OOs
         2gUD4Oq24IV8CtY96yGpnst9c+Y/CSk3JxqLB5N3+e5BWzjq6a4Gs3/7YoqbZHthZuM0
         z23MAaQGALTCnlhaxS2dXum5tdq5vDAqrcqjYBznZpmVyGOOOewaKMqVEelU1OEloaPH
         5aYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=2lia7gjzPlS2V9+MERI4dY6w9XKkOPhrYsz458ICCSM=;
        fh=fpRrj3D+xxKR+6QrbIDY10rop/8bDTNZ3WVs1tQA9p8=;
        b=R9YxARLHj0WZ7He0oLPWDlB+G9TTyW0fo2ovOh3ywJvARKUgYRcv5wEAnuIiKo4Rmf
         ziZXYSx9uC73FcCHOFhVjHONIkFy+frlJPLiBuvmSw/WTWmqIoszmK1lwzBiI757btSF
         kHAJ1xxssV/z1Cw6zDpCNLOCMnS3mxjrvfRSQSu7RVdOuytHpEAQm/3mmkKkt4VKIn5G
         2zRstsWUcOgLDyx7Z6bqZ57UZOuDnLMxYkLmqTrTKP2ixcviFowlo3VpIaEcbQgMQAGZ
         IzE83cRUhAIHtX26Y26Js6fb5kRaRlJvbWNdy/Q+zjUFSBaPCK2wyQWpceMVgvwHM0nh
         MXGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711453976; x=1712058776;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2lia7gjzPlS2V9+MERI4dY6w9XKkOPhrYsz458ICCSM=;
        b=R4luAFakZyLLGaAJPNBFe4aNVViJUzV2M04TtuhHwNmbFCezmpf3EiKz/pybeFoac3
         eB1lmf4OLhBkNB1+F0cHuY/do3WRhU/s5m2f41TWlQjwawEuSnvqILqxJY1rwvQnjVlp
         UEbhCPDa+gyr4pXC+zeBUykGKpm9juDGqMYUJ/yc9nQDdfW52ZSt2OZ8csCLbKbwG/VP
         uTwsjSCyChjYggW/KZCPFW7ms1fTGdeWvjYEGt/ZFQ7QxX045JzVHhtFhNKUADal+QCW
         zCDPEF2Qxy1sLNUyWZUSyciSDG7KC1NV33qAt1bs2FDd2uNL3zMSrFY12/bNlE/6ZT04
         bsEw==
X-Forwarded-Encrypted: i=2; AJvYcCW2OAmFyN5mpApdM3ULE+FEOMyifpUB/9r+MSz6QDLp0qAOe2gkS2ZmjqPvpDDUPogmhiJMuX3MH56yK0HStNcRN7+zlaKAX8Aa
X-Gm-Message-State: AOJu0YwzLfpeeO/wFx7N774xdCm2ynU7C0sSDddgBXBQ5TCwnGDknSes
	MBLUiJg5ZbwrIZ2kPy+YeHbFi2BKMwETQldKLyBqWe7M6b9CaB9wME9Set+VAkg=
X-Google-Smtp-Source: AGHT+IGprbJIleYNBwZrPKtjaWwp3jy3DTx1FJAbmlFsBCc3bIxmhugJfySlak5NW2S6QSgiyJw7Kw==
X-Received: by 2002:ad4:5764:0:b0:696:9f8b:fe3a with SMTP id r4-20020ad45764000000b006969f8bfe3amr1220389qvx.17.1711453975760;
        Tue, 26 Mar 2024 04:52:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:252d:b0:690:db56:6d5e with SMTP id
 gg13-20020a056214252d00b00690db566d5els789699qvb.1.-pod-prod-00-us; Tue, 26
 Mar 2024 04:52:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXZRe910/YrfyQLCvpLuKRW8YrXsc83k0C6RGcVzJzZJoQPkXnOowBcE40q7szWOA3cMub9SLSHCgUjA2PIQLlio8ScXWoBZqphwcGD
X-Received: by 2002:ad4:5764:0:b0:696:9f8b:fe3a with SMTP id r4-20020ad45764000000b006969f8bfe3amr1220347qvx.17.1711453974833;
        Tue, 26 Mar 2024 04:52:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711453974; cv=none;
        d=google.com; s=arc-20160816;
        b=moPqHkP5nKcKWBTdkqkKqdYTMoQQ9OD3mKHpg+iuF5vHt+P6UAzIpq4Gva4PzCqSuu
         IiF1kN6RHDD4JpfbPfpQEtoppvxWkFKDf4giDnc5eTWE5/faMEM3wi21tSE1YSermrTN
         Mcick/gF7BSc9bEme2tU9kqeVFRBWd+Kh0qeNdkwu2t+lLKhCCtuYQKWpWxrlephdkYx
         Ep3zJI3dEzpuSx8mf+jjWfa3cEjfnD33PBLsB5WF82z1cqEUNnnrJbIu5MMXI+kZH8Uu
         XibGlk9z7VbOFkAP6Bsm9dBgXyfF3+eL9o/oBTfcEbtMPhhiCfGTamQ0a1B05lah2zSZ
         sTDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=UVKTSmgfCMmBXgUTvUHPvCqYu4HUF3gXP5uWqpd7b6k=;
        fh=eNctsQJpbolMdObVRtI1lR0woH2X8H444ab4ocqDCh4=;
        b=InhQ9j5BqpbbgqKuUQ5aYxu58Dt3XEwtYPmcuAlzkRsCA66azguSDQsIXKjnh9Sf/2
         3X3YR/SVdOPHq7+LaMvmIdnZKbKf35WQ+v3yw56NpJt2z/7JH0/DCs6lSG/wnsvdoKXf
         zcivVdNW6sdfJ3RwdaB6UE59tdsD/R0iyhS2kXbGwEyiDQNl6uj6Mw69Ply028VjNVEI
         yC3RfcuLtjzA3ct9RwREvcT6XYvYJxEVUIdbaHoQch6Gh4VBa+AZ+RDfzsSmkAB/CRAM
         T9fb3TIf3t/DIxaRtNjqVJl7B3OmpDwB9IqisEyHQWjRBCptCaLVOm2YuXoNcVT81rA6
         uk9g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id m10-20020a0562141bca00b00690193b676fsi9786856qvc.350.2024.03.26.04.52.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 04:52:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-655-EdsQtiNINGuqSHnVtDhHGA-1; Tue,
 26 Mar 2024 07:52:53 -0400
X-MC-Unique: EdsQtiNINGuqSHnVtDhHGA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC9901C3A4C0
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 11:52:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A9ACA2166B35; Tue, 26 Mar 2024 11:52:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 701BC2166B31
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 11:52:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DB4B800265
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 11:52:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-392-YDXuuS9oNpSeXOOb82jRwQ-1; Tue,
 26 Mar 2024 07:52:50 -0400
X-MC-Unique: YDXuuS9oNpSeXOOb82jRwQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V3p8J1DSGzGwq;
	Tue, 26 Mar 2024 07:52:48 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V3p8J0x8fzcbc; Tue, 26 Mar 2024 07:52:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V3p8J0szHzcbV;
	Tue, 26 Mar 2024 07:52:48 -0400 (EDT)
Date: Tue, 26 Mar 2024 07:52:48 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Jace Kattalakkis <khalfang1366@gmail.com>, blinux-list@redhat.com
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
Message-ID: <bae61399-42f0-d220-f29e-5e8bf66783ae@panix.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com> <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

tuir is what you want for this job.


--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 26 Mar 2024, Jace Kattalakkis wrote:

> Every time I try using Teddit I get a 403 or 429 though, is there any eas=
y way
> around this, or?
>
>
>
> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
> > Hello,
> > for reading, I'm personally using the Teddit frontend, which should wor=
k
> > well in LYNX as well:
> > https://codeberg.org/teddit/teddit
> >
> > My favourite instance is thisone (since it's usually free):
> > https://i.opnxng.com
> >
> > Best regards
> >
> > Rastislav
> >
> > D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
> >> Hi All,
> >> previously, reddit worked well,  at least for reading posts, in both l=
ynx
> >> the cat and links the chain.
> >> Now, even elinks produces a blocked error message, my guess is that th=
e
> >> reddit community is not aware of Linux and these tools for access.Wond=
ered
> >> though if another tool already exists that might be a part of a shell
> >> infrastructure?
> >> With appreciation,
> >> Karen
> >>
> >>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

