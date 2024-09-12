Return-Path: <blinux-list+bncBDLMFUWM64DRBSP7RC3QMGQEULHGGXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A7E975E5D
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2024 03:11:39 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4585419487asf7653761cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 11 Sep 2024 18:11:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726103499; cv=pass;
        d=google.com; s=arc-20240605;
        b=ff6/Ij7iBle0gFGaOyNFVQm+bIUe+TWmCvGqIgl60ANUF0WcUyPfgvFv/7MJpRzAPG
         wxOURH+LsIyu+/SlWO6aHHx309PFZMJ9ifHVgLvbGhCPMskKoBklM4XRHEDg3/Z9CWLo
         BOONe4FzbnMhTQDtTAg38cGQmi3p4JsDGpOj2CjjP7bhvlY6QDUp8e0snyfLyGPKCWBG
         7wPfsSgmkOVG2wQ2/t1AnHB76NAmqgWhhWHV40d/BOOxENE5ol9SPrc6xqW2qblVzadn
         Re+TgSULC9SrEz5kBaJW62GBKBURmOA/mAzUvwu/pmEF7GRsNR09EjC7bI67UIhm82Vi
         J+rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:in-reply-to:cc
         :references:message-id:date:subject:mime-version:from:delivered-to;
        bh=+p7yIRsCscvFIG9epKAF4HZoupvEMYcmnn/JnHMAXlQ=;
        fh=gycb2lrTVZNOm1iaSwGUGYV/DLA7JNygvee7IZFMDqg=;
        b=kEkefz330W7/OdJsErXAatjJcdai5BYIH3JF7xpfGGcXorniet/ppqMIoT/RH0gDMV
         Pq0IK42+JMmi6N5oPdgudntawhZqIgGL2imtOCgpOES+r35+3jp1oJT+XeqWJunLUiOJ
         d80Rmjpdg0p1cXFlblFZlJVXWRBx23zR1B5zQgETmFD8UIGQc7OYKwUKjrXOUJ6VTDCC
         Lb+pRqFYq7yAEQdF3VpOUtU56fCyZivfIKUTmRp/N+BtaRormxEboCkxnpJhfffic7zl
         vZGwJYk1BtYWORg5Sp7ipUz7a3xEaQQbwGacVmfreqWw5Jqd9E7Q2ihyBxgAHpCyKNO3
         0dug==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.222.51 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726103499; x=1726708299;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+p7yIRsCscvFIG9epKAF4HZoupvEMYcmnn/JnHMAXlQ=;
        b=S4/ezNxBaN/T2AhVHtXLFKwSoLKpC/DBpoBECVhmhbBCxWWqsMNtplvpyRItvtP09z
         AqHyLLYWVJ+7JEbpox/rYAxbDne+RSzRwoo1uSwcqAk2s8bnHFrkERZtFUt+nRHy7I0K
         W8+V9i+4YeQpACOpB3nrQlbvYBAOPtFom8KV28EoDi3wu4gg24hZDi6Mw8Ra0dJfa3jX
         J3pSB14GjgQVanutpuRnkVuiAc0vJECUl4eYxFRBVDklssrQy1ZYHBy+oPKnM7jBmNg7
         PIIFRvkIpipoiS7KeQTSd1W9Y4vPR5TG9IAU+MgqnjwFAlSsirx3joWh0+n+/qHZ2Xy/
         8l8Q==
X-Forwarded-Encrypted: i=2; AJvYcCUy+PV558CH4498i+6rq3rnEMgorsiGqR9evKes6nOALmBC59yvDTS1F16MsaspA2elFDRpcg==@lfdr.de
X-Gm-Message-State: AOJu0YzqQewfCIX8VVNQaTwGvluNY+271ZygO+z30ZlxKnC5h0f+8OB/
	h/M06GtNwniYr2+qi2oPxqtUd+VyOsm1Mou7XI84VKzfqUFxzIgH+qA0e3oO6XY=
X-Google-Smtp-Source: AGHT+IE4NURajG9gDCZ9dUL+OE1DeniztDtU8SPkPmAB6gva3ceL8XGyUQIEsiHJj3E9nwDGY5WSsA==
X-Received: by 2002:a05:622a:651:b0:451:a0f4:c037 with SMTP id d75a77b69052e-4586033b00cmr17929751cf.31.1726103498304;
        Wed, 11 Sep 2024 18:11:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:156:b0:458:2dcf:c764 with SMTP id
 d75a77b69052e-4585fb078f6ls6731371cf.2.-pod-prod-03-us; Wed, 11 Sep 2024
 18:11:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWSp4WbzEDJSiTrSjZh/r2BoeU4qP0hXWEUKjdfgw6cpOZrbUz9jVwc2d8BLMq92RCMauTfvfMI+zy/mg==@gapps.redhat.com
X-Received: by 2002:ac8:5854:0:b0:453:5ce5:9972 with SMTP id d75a77b69052e-458602f4d18mr20339601cf.16.1726103497283;
        Wed, 11 Sep 2024 18:11:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726103497; cv=none;
        d=google.com; s=arc-20240605;
        b=DGB0IFwXwDCSqkEE3h7VbUA/7qY6q91ProYEkQmXndOWsSoAfmlR173Qqc0v2xjij8
         XulbWYMhHk1xpmJ0IFd1FZFoK56bmjvXCP9jEhitaguyCTlgkr6pmcQHRacbyySGADfG
         E3puf2vic7H24oWI01Xg8dQGBBRLGkhQDl+1CUEAzag6NXgR2nNYUWsDQVdRyrys+Ts2
         Iq1K+LKkurtIhvYiVKVXzUxjbx2zrpUJv4Hf0xmEyrQC+wVefDUc/hv6jRTrRmmmpW+l
         cJAvvSrRX5hkOH6BMe42oQ07/zt9h8QiNVAnYJdf8fvX6Ut7H3UXUh257ZQYjfmRI0z+
         nSHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to;
        bh=W+Acd6L2vIpGuc1DRF4pgLF3XVia5rgzF+gkUr9y8oM=;
        fh=k3Pt+ZPNKkjpfYcbARAhb5h3zze8a1C81rOeYtKOcMQ=;
        b=UD6pZAu7KssiSl4jV2qiEWUAVV6271kzaOVJuC/lLPJJeNIIq55j5FfAKK5Yw+XTs2
         ac2ts9KvN+UajyxKPTfZgGGzXMeDege2/DXa5UVRRDdDHEVE07NvzDzss7rdBRNeGY6+
         s3ljFAH10xfPtOg8ERYb9vgoPw5XZzHDe4ly/oxmWGIhWHFfltDNVSsIIXcokNc0MGRo
         gKLNjwbALLGVVhxJuh/cO0MQHJCU8nkhYkyn7Iuty/beYDu0Q5hqDKuFR3c1JRhn0TfD
         t1/jqKN6QEi/BmX/CrFkyzOn61NbouTGYQn1R8hAxZfKblRQNoAxVN5tbOK0tftFS9Ui
         34ng==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.222.51 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45822e61ae5si117030591cf.25.2024.09.11.18.11.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 18:11:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of rmann0581@gmail.com designates 209.85.222.51 as permitted sender) client-ip=209.85.222.51;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-113-FJ1OSbtVM9aYKnkc8KzEZA-1; Wed,
 11 Sep 2024 21:11:35 -0400
X-MC-Unique: FJ1OSbtVM9aYKnkc8KzEZA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3F35E19560AB
	for <blinux-list@gapps.redhat.com>; Thu, 12 Sep 2024 01:11:35 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3A9C03001D11; Thu, 12 Sep 2024 01:11:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 37F233000235
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:11:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A16C219560BF
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:11:34 +0000 (UTC)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-13-biz0-Ei3MraAr6J7wpUwOQ-1; Wed, 11 Sep 2024 21:11:32 -0400
X-MC-Unique: biz0-Ei3MraAr6J7wpUwOQ-1
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-846ca104682so118622241.2
        for <blinux-list@redhat.com>; Wed, 11 Sep 2024 18:11:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU5K9nUL1UsnzpvS1+Mp3NTPO6izM6AnzB+tqwna2RzIDDHqn99EznK/2G0KFi15qRd1oPPbzY0GhpgcA==@redhat.com
X-Received: by 2002:a05:6102:358f:b0:498:d12b:4774 with SMTP id ada2fe7eead31-49d4147ebc1mr1261250137.7.1726103491834;
        Wed, 11 Sep 2024 18:11:31 -0700 (PDT)
Received: from smtpclient.apple ([38.40.68.7])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-49c16c99abbsm697207137.3.2024.09.11.18.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 18:11:31 -0700 (PDT)
From: Ryan Mann <rmann0581@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: any chromebook users here running linux on chromebook?
Date: Wed, 11 Sep 2024 21:11:20 -0400
Message-Id: <BBCE40EE-AA90-4F6C-9784-20BF9F6C09C2@gmail.com>
References: <55F61CEB-56FB-42DF-9225-1A94CF10141F@panix.com>
Cc: Chime Hart <chime@hubert-humphrey.com>,
 Devin Prater <r.d.t.prater@gmail.com>, blinux-list@redhat.com
In-Reply-To: <55F61CEB-56FB-42DF-9225-1A94CF10141F@panix.com>
To: Jude DaShiell <jdashiel@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rmann0581@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rmann0581@gmail.com designates 209.85.222.51 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
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

Tdsr is not in pip. You need to clone it from github.  I don=E2=80=99t reme=
mber the github address off hand, but you can put tdsr screen reader in you=
r search engine.=20
Ryan Mann
Certified Assistive Technology Instructional Specialist
rmann0581@gmail.com
386-383-5175


> On Sep 11, 2024, at 8:36=E2=80=AFPM, Jude DaShiell <jdashiel@panix.com> w=
rote:
>=20
> =EF=BB=BFpipx never heard of tdsr and pipx usually builds python packages=
 correctly so they run since pipx tracks down and installs necessary depend=
encies. has anyone got tdsr working on a chromebook? the environment is deb=
ian bookworm on linux on chromebooks.
>=20
> On Sep 9, 2024, at 1:08=E2=80=AFPM, Chime Hart <chime@hubert-humphrey.com=
> wrote:
>=20
> =EF=BB=BFWell Devin-and-all, what are advantages of TDSR over Speakup or =
Fenrir? Relating back to Jude's mention of Chromebook, while I do sometimes=
 attend Zoom meetings, the screen-reader Chromevox really doesn't seem to h=
ave flat-review, which I use all-day in Speakup. I just tried running ./tds=
r  I get a traceback line14 no module named "pyte" O, I am in Debian SID. T=
hanks in advance
> Chime
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

