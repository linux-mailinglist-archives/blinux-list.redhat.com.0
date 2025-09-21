Return-Path: <blinux-list+bncBCM2V5WE3MDBBXGDX7DAMGQEUJCV6BI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E329B8DA42
	for <lists+blinux-list@lfdr.de>; Sun, 21 Sep 2025 13:30:39 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f9673e56sf68314811cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 21 Sep 2025 04:30:39 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1758454238; cv=pass;
        d=google.com; s=arc-20240605;
        b=gkHllOzJn/KhpRvauaqq7bnj2dy6GE4Q32BwFvVbricmF7pBJefo619JKSlULLjP4m
         +fIRQQrRRJqxKGyt3NDwQDV0sHmi8Oiad5YhiQKI6LQZx/gIpERM5FMGyrCcLV+/26fk
         xx2pydNOtAFgVsX7b2F8X1uzARGakMLc+PGDWwW2BtPWs3O+6wSy6A6Ted8/zBF27mG4
         ni7sNyasfLe0ubFdQ2FFRx1QL18oXIQoz3XN7kZUTrUCuiaQHiAMwtjkvXt9VOftuGuT
         4FS3d5q+zUVOpvu2BJS+7YU6sMdqToJY8VNm5C/NvVhNA3DxT44JRPE/HR+cYVZHdy6p
         yl0A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=WpZKq37/5fHzirB8wv6YAF7mrWXU0i2zENS0pPpbJ28=;
        fh=mx9LcoDwPnKSAf2/xzkGx0p7+UzKnhXFDCB97roBx18=;
        b=dCC8y4YeR/MtaMAAt4+f/p1q5lwqe5zzWGcNbkVttV1iop5j77yV3ZN2hGsjYVVC/+
         sz0L26xRFUKrGqx84g74uq5E1X82ULXhq/y4NwFEC5JC2Mb8hQXWemXjf5GY12tFhYsd
         avPgS4ZwElOLcMu2Cyfk17/Hu69KSOSp+OUkbi7jU2S9eVJbt/tn+zJ+p22n8yuoHX8V
         t8jkSxzd/LLjU2A7RdFPBJHsfu4AJKItiirzJlFLQidEKsTRWm0jQCcuzlkwLXOkHtK8
         ca3hs5H0pGHD3UqHqPanlNfSUab8xIVcBuF+K2wB+jKW2z7HFiNWPqm+xwjKxF0ms4F3
         Hv7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=V6Ckt0Gc;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.102 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758454238; x=1759059038;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WpZKq37/5fHzirB8wv6YAF7mrWXU0i2zENS0pPpbJ28=;
        b=foZNwzG/3KX5Buv8JnllfeImW7oNpMs0QSl/5D1iG1CBtjH0Gov9u1eJXZWnjgIVQ4
         XbEgjTyKC4gIMy/gOdkC8oFL+1wmv9KsLE6dKMFslPs55Xts8G3GbkGaeMtCmLfOQU5z
         Iirj44GiifGtUFFdzJlccEOoo4+p2qwrfXjceHA3h9Xs5QxsF11W/LtZnuooEdhsb4bA
         0JNCk8WhQYnFzPjoM9U5cwt3fyuV5X5vfwbAB5qoQuQLP4RtxNELQDfmDX1n8YQaB34K
         fiB/QOdbWSg+o3oTIvUBDIQ5frHDeKd87OrdCzjYSLzveDuqriJTxMehT7hN/jXkUaar
         kHhw==
X-Forwarded-Encrypted: i=3; AJvYcCXxtyQO06w+oubl7CfYVVssL0trsND8rbB0kIcNcbG21MkGcsrnoOQNvw1IzkQOGirP+pBV8A==@lfdr.de
X-Gm-Message-State: AOJu0YyL9iFYxgEPbXkvi2VeZLEkdoKUJ1qWm69JHa8O46kUMc6eqHf4
	Fdm/Q5/bTHD8bLUhF5QDffwDz44vzrGgRZEBlik1Sqc794XTL10oVNHP4xpyTa1QItI=
X-Google-Smtp-Source: AGHT+IF4WgE+1WGeanp1u6Lh4C6ZGuk2NVmbNWXoFNX0RvdyiidoW2vyVkTN2DTTKb1rppoz5xFoCw==
X-Received: by 2002:a05:622a:1813:b0:4b7:a3f2:6ec with SMTP id d75a77b69052e-4c06fc182aemr90912831cf.36.1758454237460;
        Sun, 21 Sep 2025 04:30:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARHlJd71+lCxDfmhJ8sWPSV7vG7FHGDpLqQp6hlWmNiOtNqVEw==
Received: by 2002:ac8:5ac1:0:b0:4b0:8b27:4e49 with SMTP id d75a77b69052e-4bf89a30f9bls45311681cf.0.-pod-prod-02-us;
 Sun, 21 Sep 2025 04:30:36 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWHjhqLhja3tl1aYEYzJGhbrOJXWRVKy616uWnJc1SbrKZCRQUOISPjw2FGHwpbB8+AoIIZcnT2OTpV+A==@gapps.redhat.com
X-Received: by 2002:a05:622a:c2:b0:4b5:e9bb:846e with SMTP id d75a77b69052e-4c06ef89154mr93820301cf.21.1758454236057;
        Sun, 21 Sep 2025 04:30:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1758454236; cv=pass;
        d=google.com; s=arc-20240605;
        b=a69n+sol20fX8BXv3Gewn5LpKf77ScWmoveMEAKhFIE/d+xM976TXG/Z0K9OQbXGPl
         0PQfGDtMkbo1miJxfUZpafGB10ozk9MvOatKCL7o8VupuwPafVJRd8iQINFQF5ofGN+h
         Irg9Pg2/3uIBTd5BSDRnd35uJDQ2EusZnwHpWi7WVD4sGRpNVJmkHGD21sZxAWmK7e6o
         0loVGZUHlLteUS8e8+FPKgVqdNtOMk2T+hN5JyKskCRzILfn0qjETN6MVJ3q48yCw2r5
         XJaCOQyQuocIuSpAFCmjqtlWJPCr1GsOAZeEdBSgv0Ev8wuz2FZWPVvFkQ2cpqkpLzsW
         SOnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:feedback-id:message-id:subject:from:to:date
         :dkim-signature:delivered-to;
        bh=uEJ6Lxpe4qLWfButnBiYNjrt+pg6lwdZuwdNDsCVjvs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kfq2th/+La5YNF/r34lzVmZwAbVEsMGKEzd/BcRhd3kbz5UrqflKgpXB1XJPGeu0IK
         8bR1IIOrQc2mH9rrs22EnPhtDs0DDvnZ5Hg6oRNDTXmIwXAvqbILPjyoOZuc88lMwEkX
         a+yrYZAl60xcV5iQDXuyLT2LTUMa3/DOzhOdrSstTWjTnv7F26/FTsONs/WFdaVksKg+
         gd2dkLftDNN3bQlvDS90+5RGW/qiFBiheomszcFar2wypKyXbxSgJvNF+SxUYCT498c1
         h6vWN56uOTiEEG99ILjmhe9BaGVfaNKruzhnkUjvkUBEelqpr2g/Sjras2WIFJ3ja79F
         gqog==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=V6Ckt0Gc;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.102 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4bf8f3eb569si32168741cf.143.2025.09.21.04.30.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 04:30:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.102 as permitted sender) client-ip=109.224.244.102;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-479-W0F52MFgMYKeK2QIOzzxpA-1; Sun,
 21 Sep 2025 07:30:34 -0400
X-MC-Unique: W0F52MFgMYKeK2QIOzzxpA-1
X-Mimecast-MFC-AGG-ID: W0F52MFgMYKeK2QIOzzxpA_1758454233
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 66FE718004D4
	for <blinux-list@gapps.redhat.com>; Sun, 21 Sep 2025 11:30:33 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 62BAE1800578; Sun, 21 Sep 2025 11:30:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6019C1800446
	for <blinux-list@redhat.com>; Sun, 21 Sep 2025 11:30:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CBD2818004D4
	for <blinux-list@redhat.com>; Sun, 21 Sep 2025 11:30:32 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1758454232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=uEJ6Lxpe4qLWfButnBiYNjrt+pg6lwdZuwdNDsCVjvs=;
	b=S/2ttKh0x4SzGPx0sNKORmbMxFu+oSHQJn4yJNYBGanEdpFFQQpWV2eHgoTuoKMOKWjMy+
	dtM/8Xjz/gx2DxOdn8qXHAN2WuDTDWAsJJrx86gwpp0qWZ3JEuvYlkwTZGBJ59iZpnHsHr
	pqLmR+u8mdNxzztvhZspaBPVYY2p/OWDRKHdWOV4IIx/cgRTqLjW+pKYwxB0ob0hdLPpDL
	ARSITi3TDYA43vMr1Qrlp6T0ifL/NMRqPkj5aXHGQBYXJOH42UqOqLyCKsWp8Xdgtext8Y
	uqvsj5y4hhCiACLQpumurg4La3pDb9qj9QPt12JiczWLBlF8zT5IWqyfDzKP5w==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1758454232; a=rsa-sha256;
	cv=none;
	b=Gr0Zrrqrg8FL08hPYd/63pETQhMafTJDPI4CgUzYlkgrQFnJlOxmGnGWADFVXB2C+8Mk1j
	zZ4eGPUmT6VlTuZ0sDiN5VYQspnAOVRgD0D+GgRESRC4l28sk3GJ6pjb//ebpohn3IFuyN
	FTsswfCU4CeG3QvO1Vdw2D4Ix6WYBiF4ywIZwz6gkRXvokxuSo/IEeacGRjs9YB4SZ9aZ6
	/X66+m0dLcAm/cDQApSphXKqOBp0bTaxOxC2LwPdbMhOq/OGE97grP/DTh2OP6XI7hj8a4
	wuVTg+rpY8aYPEglhI1LLD9kmE/qsfBpZLb/x8v5+fS1folf5z+/kgyO8/HkNA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=V6Ckt0Gc;
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	spf=pass (relay.mimecast.com: domain of rastislav.kish@protonmail.com designates 109.224.244.102 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from mail-244102.protonmail.ch (mail-244102.protonmail.ch
 [109.224.244.102]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-204-tFxS7He4OaKVyEK_VTrqGA-1; Sun, 21 Sep 2025 07:30:29 -0400
X-MC-Unique: tFxS7He4OaKVyEK_VTrqGA-1
X-Mimecast-MFC-AGG-ID: tFxS7He4OaKVyEK_VTrqGA_1758454228
Date: Sun, 21 Sep 2025 11:21:37 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Any Debian Testing users here?
Message-ID: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: c6bc7f3bab5ecaccb767810116752bcfa2a74113
MIME-Version: 1.0
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: Wco7v3gp24Fx6d7KVMTT90TS-tw16JWEsX2RvsZLURM_1758454228
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative;
 boundary="b1=_fXgzAsPdsAtbgfgAxT7HhbKxfPutNl7PbAau40kA"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@protonmail.com header.s=protonmail3
 header.b=V6Ckt0Gc;       arc=pass (i=1 spf=pass spfdomain=protonmail.com
 dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com
 designates 109.224.244.102 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
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

--b1=_fXgzAsPdsAtbgfgAxT7HhbKxfPutNl7PbAau40kA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello list,

this is a question aimed at the users of Debian Testing, what has been your=
 experience with this system?

The Windows 10 EOL is near, so I=E2=80=99m thinking of propagating Linux to=
 people who can=E2=80=99t upgrade their machines. But I=E2=80=99m wondering=
 what would be these days the ideal distribution to recommend.

Tested rolling releases seem to me like the perfect balanse between updates=
 and stability. You don=E2=80=99t need to reinstall them every year or two =
to stay uptodate, but at the same time they shouldn=E2=80=99t just break ou=
t of nowhere because of dependency conflicts.

openSUSE Tumbleweed and Debian Testing are the two good options I=E2=80=99m=
 aware of in this space.

Tumbleweed is pretty amazing, has a web installer you can use from your sma=
rtphone, offers both daily updates as well as slowroll, which gets one larg=
er update on a monthly basis, it=E2=80=99s preinstalled with btrfs which sh=
ould make it possible to roll back any problematic updates, and the system =
pretty much works out of the box.

I would absolutely recommend slowroll to any non-technical user, but arguab=
ly Debian has much more online content available, like openSUSe is not a sm=
all community either, there=E2=80=99s actually plenty of resources on it to=
o, but sometimes when checking instructions on how to install say a program=
 which is not available as a Flatpak or a part of the openSUSE repos, one n=
eeds to translate the instructions for other distros to their environment. =
What=E2=80=99s something a user new to Linux may find complicated.

What=E2=80=99s your experience with Debian Testing? Would you recommend it =
to someone completely new to Linux?

Best regards

Rastislav

&#8203;

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1=_fXgzAsPdsAtbgfgAxT7HhbKxfPutNl7PbAau40kA
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
"/>
    <title></title>
    <meta charset=3D"UTF-8"/>
  </head>
  <body>
    <div class=3D"markdown-here-wrapper">
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Hello list,</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">this is a
        question aimed at the users of Debian Testing, what has been
        your experience with this system?</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">The Windows 10
        EOL is near, so I=E2=80=99m thinking of propagating Linux to people=
 who
        can=E2=80=99t upgrade their machines. But I=E2=80=99m wondering wha=
t would be
        these days the ideal distribution to recommend.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Tested rolling
        releases seem to me like the perfect balanse between updates and
        stability. You don=E2=80=99t need to reinstall them every year or t=
wo to
        stay uptodate, but at the same time they shouldn=E2=80=99t just bre=
ak
        out of nowhere because of dependency conflicts.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">openSUSE
        Tumbleweed and Debian Testing are the two good options I=E2=80=99m =
aware
        of in this space.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Tumbleweed is
        pretty amazing, has a web installer you can use from your
        smartphone, offers both daily updates as well as slowroll, which
        gets one larger update on a monthly basis, it=E2=80=99s preinstalle=
d
        with btrfs which should make it possible to roll back any
        problematic updates, and the system pretty much works out of the
        box.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">I would
        absolutely recommend slowroll to any non-technical user, but
        arguably Debian has much more online content available, like
        openSUSe is not a small community either, there=E2=80=99s actually
        plenty of resources on it too, but sometimes when checking
        instructions on how to install say a program which is not
        available as a Flatpak or a part of the openSUSE repos, one
        needs to translate the instructions for other distros to their
        environment. What=E2=80=99s something a user new to Linux may find
        complicated.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">What=E2=80=99s y=
our
        experience with Debian Testing? Would you recommend it to
        someone completely new to Linux?</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Best regards</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Rastislav</p>
    </div>
    <div class=3D"mdhr-raw" style=3D"height:0;width:0;max-height:0;max-widt=
h:0;overflow:hidden;font-size:0;padding:0;margin:0;" aria-hidden=3D"true" t=
itle=3D"MDH:PHA+SGVsbG8gbGlzdCw8L3A+PHA+dGhpcyBpcyBhIHF1ZXN0aW9uIGFpbWVkIGF=
0IHRoZSB1c2VycyBvZiBEZWJpYW4gVGVzdGluZywgd2hhdCBoYXMgYmVlbiB5b3VyIGV4cGVyaW=
VuY2Ugd2l0aCB0aGlzIHN5c3RlbT88L3A+PHA+VGhlIFdpbmRvd3MgMTAgRU9MIGlzIG5lYXIsI=
HNvIEknbSB0aGlua2luZyBvZiBwcm9wYWdhdGluZyBMaW51eCB0byBwZW9wbGUgd2hvIGNhbid0=
IHVwZ3JhZGUgdGhlaXIgbWFjaGluZXMuIEJ1dCBJJ20gd29uZGVyaW5nIHdoYXQgd291bGQgYmU=
gdGhlc2UgZGF5cyB0aGUgaWRlYWwgZGlzdHJpYnV0aW9uIHRvIHJlY29tbWVuZC48L3A+PHA+VG=
VzdGVkIHJvbGxpbmcgcmVsZWFzZXMgc2VlbSB0byBtZSBsaWtlIHRoZSBwZXJmZWN0IGJhbGFuc=
2UgYmV0d2VlbiB1cGRhdGVzIGFuZCBzdGFiaWxpdHkuIFlvdSBkb24ndCBuZWVkIHRvIHJlaW5z=
dGFsbCB0aGVtIGV2ZXJ5IHllYXIgb3IgdHdvIHRvIHN0YXkgdXB0b2RhdGUsIGJ1dCBhdCB0aGU=
gc2FtZSB0aW1lIHRoZXkgc2hvdWxkbid0IGp1c3QgYnJlYWsgb3V0IG9mIG5vd2hlcmUgYmVjYX=
VzZSBvZiBkZXBlbmRlbmN5IGNvbmZsaWN0cy48L3A+PHA+b3BlblNVU0UgVHVtYmxld2VlZCBhb=
mQgRGViaWFuIFRlc3RpbmcgYXJlIHRoZSB0d28gZ29vZCBvcHRpb25zIEknbSBhd2FyZSBvZiBp=
biB0aGlzIHNwYWNlLjwvcD48cD5UdW1ibGV3ZWVkIGlzIHByZXR0eSBhbWF6aW5nLCBoYXMgYSB=
3ZWIgaW5zdGFsbGVyIHlvdSBjYW4gdXNlIGZyb20geW91ciBzbWFydHBob25lLCBvZmZlcnMgYm=
90aCBkYWlseSB1cGRhdGVzIGFzIHdlbGwgYXMgc2xvd3JvbGwsIHdoaWNoIGdldHMgb25lIGxhc=
mdlciB1cGRhdGUgb24gYSBtb250aGx5IGJhc2lzLCBpdCdzIHByZWluc3RhbGxlZCB3aXRoIGJ0=
cmZzIHdoaWNoIHNob3VsZCBtYWtlIGl0IHBvc3NpYmxlIHRvIHJvbGwgYmFjayBhbnkgcHJvYmx=
lbWF0aWMgdXBkYXRlcywgYW5kIHRoZSBzeXN0ZW0gcHJldHR5IG11Y2ggd29ya3Mgb3V0IG9mIH=
RoZSBib3guPC9wPjxwPkkgd291bGQgYWJzb2x1dGVseSByZWNvbW1lbmQgc2xvd3JvbGwgdG8gY=
W55IG5vbi10ZWNobmljYWwgdXNlciwgYnV0IGFyZ3VhYmx5IERlYmlhbiBoYXMgbXVjaCBtb3Jl=
IG9ubGluZSBjb250ZW50IGF2YWlsYWJsZSwgbGlrZSBvcGVuU1VTZSBpcyBub3QgYSBzbWFsbCB=
jb21tdW5pdHkgZWl0aGVyLCB0aGVyZSdzIGFjdHVhbGx5IHBsZW50eSBvZiByZXNvdXJjZXMgb2=
4gaXQgdG9vLCBidXQgc29tZXRpbWVzIHdoZW4gY2hlY2tpbmcgaW5zdHJ1Y3Rpb25zIG9uIGhvd=
yB0byBpbnN0YWxsIHNheSBhIHByb2dyYW0gd2hpY2ggaXMgbm90IGF2YWlsYWJsZSBhcyBhIEZs=
YXRwYWsgb3IgYSBwYXJ0IG9mIHRoZSBvcGVuU1VTRSByZXBvcywgb25lIG5lZWRzIHRvIHRyYW5=
zbGF0ZSB0aGUgaW5zdHJ1Y3Rpb25zIGZvciBvdGhlciBkaXN0cm9zIHRvIHRoZWlyIGVudmlyb2=
5tZW50LiBXaGF0J3Mgc29tZXRoaW5nIGEgdXNlciBuZXcgdG8gTGludXggbWF5IGZpbmQgY29tc=
GxpY2F0ZWQuPC9wPjxwPjxicj48L3A+PHA+V2hhdCdzIHlvdXIgZXhwZXJpZW5jZSB3aXRoIERl=
YmlhbiBUZXN0aW5nPyBXb3VsZCB5b3UgcmVjb21tZW5kIGl0IHRvIHNvbWVvbmUgY29tcGxldGV=
seSBuZXcgdG8gTGludXg/PC9wPjxwPjxicj48L3A+PHA+QmVzdCByZWdhcmRzPC9wPjxwPjxicj=
48L3A+PHA+UmFzdGlzbGF2PC9wPjxwPjxicj48L3A+PHVsIGNsYXNzPSJkcm9wZG93bi1tZW51I=
HRleHRjb21wbGV0ZS1kcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7IHBvc2l0aW9uOiBh=
YnNvbHV0ZTsgei1pbmRleDogMTAwMDsiIGNvbnRlbnRlZGl0YWJsZT0iZmFsc2UiIHBvcG92ZXI=
9ImF1dG8iPjwvdWw+">&amp;#8203;</div>
 =20

</body></html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1=_fXgzAsPdsAtbgfgAxT7HhbKxfPutNl7PbAau40kA--

