Return-Path: <blinux-list+bncBCFJ3VNT5EIBBLVSWCYQMGQEN7ZXTVQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id E96258B4105
	for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 23:14:23 +0200 (CEST)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-de45d8ec875sf5175632276.3
        for <lists+blinux-list@lfdr.de>; Fri, 26 Apr 2024 14:14:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714166062; cv=pass;
        d=google.com; s=arc-20160816;
        b=JJ8AcHp7WtB6MBt8v5ZExJNvVHDJ6tCw/+PBD6/tPXEOZf2ktTLr7jqxzEoltzVrUt
         6LiyhbG7coAsGmN/SGWkve7fozV7DIbUYw/AZLvnOpGVThFZSyAmJrz5Y3r8Y4sPBMnJ
         cmDMBAxEXPjCFsqOIo/0ssR2ONH22OsnvyMcuuMNRDeswd086GgXFzmAogbKJgQ9QdKv
         VwTyhXuSyh1jBcshwu9mCa8sm0mbmmGry5z4FlaIuM5vIWiyRahHY9NnNpWhtowXiMQt
         MKWL8MjrJeKXZShWs35OMYiPXAMJw2JRGj/AgekrTuW9e2xBOtH5o45QK0lNatxHS3ZY
         /RTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=4fmfIkWklLqXi0yvMcduIFPSIfIYb6mvYFujQY6kg4k=;
        fh=0DMV1Gp3frjonP1NKPlplzPW2SNbgoMS/ZBcJC/kFCM=;
        b=S+aCDtDs4ykqV2rzktqAighhle2Dv62BjQZgz3hmN80qWfDlOGg/LT4efAKiWpVGYD
         f5MHNxjnTjxoeUFctXC5ksUHs7oL5iD1prhyXRYwhTFSdP9L0z43vRubPUOwUTJMdtxT
         EyBoSqzHoYPZrQi7yhHEtTCwRkQ7Pf7mf66tOyPiEY9Ut5HTr1mudZHBelwbwfOqIJmp
         ZJ17/EddOtD7SRQReCYAs2QaVSBqZymtyoLDpenqyw1ukK/mjFEMkiG1nwSWUVsoejuu
         LzIA7jPSeNWT4pxQ6DqgMXDz1p7vDjHlurIUYaH9DivhMS2rCwFO0F+WMK11imsqAfhF
         C6dQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.44 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714166062; x=1714770862;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4fmfIkWklLqXi0yvMcduIFPSIfIYb6mvYFujQY6kg4k=;
        b=leJXO5cQg6MpFQpIcgRQIKajw1V64ITlXz2bSWHSF+lHFC7dvyWdjrZ2P2j2s75hnf
         WdCSwBIK57bECIY+S9g/Ba0rP35d0TBELhf+G9Ov0mwRRypJQMeaf5hTIPldfLQomR+X
         hwQuSPNQmQ46MAmXs2met/s6bnrdlyFNyeHReB8GL5oiTYPT1qnUvKY36qS5lir4LKFx
         GHlawurwYLK3rovZDyiAeZcZX1ASq6egR3AuoVWW9uJuvKhhwvt64BMST3btMvbxHuAe
         R+bl1o8XbMAKMO+GcsZJXBbQZIs6Ra+B65w58ixcBVQmRISSY0cGBinWdZOMDgRFjlmc
         2h2A==
X-Forwarded-Encrypted: i=2; AJvYcCXFuNRL2zJwrYAH6SQLm9m2B9MqWOcABzCNpM9U0QP9WIST5C82qNbJdl4vyDrVuI2oPvXYXpzK0FhlqbYnLbWtfI8+f68Ezvy0
X-Gm-Message-State: AOJu0YwGN/HYAuuKBl6yGmabltEv80/1P/kFppdNU4xsvnXJTnDibE4O
	pN1budKM3SP7nmsVwqJTCI+DzBvCdPqM1HWyhX8bCSAdDkTpTm3WiL4IcejGtCw=
X-Google-Smtp-Source: AGHT+IEFqncEnUGrUyR0wUIjy9+OIr8JdSOwbpFQFK4VtEtpAH95jtcM4v3cLrRw2Y1p/Inlj+dfNw==
X-Received: by 2002:a05:6902:2303:b0:dda:c5ca:c21b with SMTP id do3-20020a056902230300b00ddac5cac21bmr4670906ybb.37.1714166062686;
        Fri, 26 Apr 2024 14:14:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:dc0e:0:b0:dc7:465d:fb81 with SMTP id 3f1490d57ef6-de5861e05b9ls1727173276.2.-pod-prod-09-us;
 Fri, 26 Apr 2024 14:14:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUcAZ6/m+8LrhhgvQeANIR7aRj18LcmTejAtHEyj1HE1UmYLE/M8riHQN5jb4lcRZcWefWKzcAsjexMgsJTcyuhBxuMGhcoxe5xBi0v
X-Received: by 2002:a05:6902:2209:b0:de5:990d:11bc with SMTP id dm9-20020a056902220900b00de5990d11bcmr5145883ybb.54.1714166061762;
        Fri, 26 Apr 2024 14:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714166061; cv=none;
        d=google.com; s=arc-20160816;
        b=kbR8QBO4uQltlRQAHuB6BIxm+qVnCuLOeBL4fbwI9NBs6QRaBhYBVQUEWjFPfqnmHt
         H/KyNNg7qkcEUAqx9pvzUv064rnhCfo0EQfkxmqlECldczAz00UHNuEJ9/hdtufkGRLU
         hvaowYHb3vY0qxnQ2Xn8CdnTyCWfaIPEuZsy+YU2B6qDqydLKT34cgMdvp5E6Vykr2EU
         Dqc6MFmcBeZ3yen0H08EPHnUSFBq4v0ugDFSR+5Sul/uaHTKAdttutmKnI6C8o4IlWka
         FgxlabifIj2yaWQ/NWwetacTH/j8MekYy2a//LGdlbWwvcdtYFx5NJ0yfTcS9Im/CKPJ
         9M5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=2sD4GQZmJibELC7FcdvGV/8MU/XzKwrmjDGmR0IkeSU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=PifHIjPqoTq8B3VgNMaBCiJs3BiJDExFICSI/PbJw0SRHP+mtT4BIHY70GjMgrF7UK
         CrfNg/DduZFy2yVntG3JBJg5r00HJAZikrpAHFVJz7Jh5MUlPrxVU2+FZSOzAyS0g++9
         p/IRN4jZeNfmseJMV9wOI/AgbOMjVdyl+uYb+6f1LCsAA2xWxCliyLERKSJViiDABdab
         uA6NT3RmfQT8wcyVKoQOBuH7TVbHJC0rO22DIuD+BYoz4+LcfNYOc2zMQ4eGb2lVruu9
         qI0TKrNp1tgIGAUpSmb5zpNUzjupNL5gREre5+o+E0PM9Sia3gptR3b1V9jGoDcV2TS7
         Ipqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.44 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v21-20020a05622a189500b0043a11863ebbsi8382122qtc.262.2024.04.26.14.14.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.44 as permitted sender) client-ip=209.85.160.44;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-658-6BNpGz2rONOQ7hB7U_nLWw-1; Fri,
 26 Apr 2024 17:14:20 -0400
X-MC-Unique: 6BNpGz2rONOQ7hB7U_nLWw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CF1929AA3BA
	for <blinux-list@gapps.redhat.com>; Fri, 26 Apr 2024 21:14:20 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 29B0A400EAC; Fri, 26 Apr 2024 21:14:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E459C400059
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 21:14:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F1033C025A2
	for <blinux-list@redhat.com>; Fri, 26 Apr 2024 21:14:19 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com
 [209.85.160.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-578-Rxps4fu6OW2537xLFCSrOA-1; Fri, 26 Apr 2024 17:14:17 -0400
X-MC-Unique: Rxps4fu6OW2537xLFCSrOA-1
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-233f389a61eso1246641fac.3
        for <blinux-list@redhat.com>; Fri, 26 Apr 2024 14:14:17 -0700 (PDT)
X-Received: by 2002:a05:6870:200d:b0:22a:8e5:940 with SMTP id o13-20020a056870200d00b0022a08e50940mr3854880oab.37.1714166056601;
        Fri, 26 Apr 2024 14:14:16 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d112:d1a:716f:3885:efac:2954])
        by smtp.gmail.com with ESMTPSA id fu16-20020a0568705d9000b00239389f66cesm3411089oab.47.2024.04.26.14.14.16
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Apr 2024 14:14:16 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: folder containing orca
Message-Id: <7F1BA135-FC08-4486-9461-F6E6DDCFD207@gmail.com>
Date: Fri, 26 Apr 2024 16:14:13 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.160.44 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

Which folder would contain orca?
I will go in it, and try modifying a Liblouis table, adding contractions.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

