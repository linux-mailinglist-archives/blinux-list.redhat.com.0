Return-Path: <blinux-list+bncBDY3L4PG5ENRBLHI3G2QMGQE7IN5DSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 977EA94D7BC
	for <lists+blinux-list@lfdr.de>; Fri,  9 Aug 2024 21:55:26 +0200 (CEST)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-492a7abbd2csf1287217137.2
        for <lists+blinux-list@lfdr.de>; Fri, 09 Aug 2024 12:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723233325; cv=pass;
        d=google.com; s=arc-20160816;
        b=llqqnI3u5l7MGPwLbQkflnn0TXiiXQf3Gla5DFWhxa98+vC8EO/vw2sAhBYQpS+8Hl
         /9bqGyF0wQ3EL1XL4sSz9tCaW4twN3wrdBWbwp4opJE3dbYK35Cs0o4eKHIc/fiJKppB
         YXEnP9YaxyIPFwKrscHrAdB0mcnUB/GpCps0pZgfUgFEjAwmPnwye59oP86KZbWYK9Gq
         Fon7a2oLjkcbIx+8XpRpSnu0+cP46gB9IPUbOnD9iFyBu9FFG4aDx88RxY4GQYDRESK9
         kFlLp+GHVIxscjBqMnzZIMosfoOYL11PHO5sM7DWnjlEVT7n6qRyU5Se6UW18omozHZJ
         yc3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=T4BRnjFIKSaOdhX0RfxtBOaazOz1fpRa5+AIiAMpms0=;
        fh=4hesal3eU3Fw62dlGk8p47rIj9vdXQHni8PdeQgw6ww=;
        b=CWMDl9jYzaI4+CfH4ImJav5o98t3A7Rm/u7goUjVcrk8H33g5KjAhH8MPQ8rGL1Zw4
         oP76GAsJJkdCrT2wy+nF/pLKZ0q016UAeybYIb2tCbz+WAe9/cqkxDKSCFAS91rUj8rB
         +cwwa/Fz71F0aelFy3ytEbh86NQIoLBR+0Rm1v5yvCFZPj+yvjetJ1k/ZeUnQwUALuJ6
         n2gxqQ8sg/i4h8fi/M3AxkmHivEeOMyHruSYUGU7n8r2eggeBf8n4MNzJdpThJBYni05
         63EGSna7XuqZDvPKfyK1wcM1gsRWeDGLHmM+dgUJlUoWKoOQwa6CbAD+eDOL0YdmQYfZ
         GlSA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=marbux@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723233325; x=1723838125;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T4BRnjFIKSaOdhX0RfxtBOaazOz1fpRa5+AIiAMpms0=;
        b=mzrswBiEVHxZEaDIy9QPKinWPwE+ejhHsq+gWCd6c31kFP8Yx/gMqtO0EQslTyk/Rd
         Qq1nmhYYSstPdlSQj9ykVg7zJ29rx05ZrwY1NBEUr6bBzXY6/uyW7lEBfYOiWfCV4JwY
         mSPI5YgUKqw3etLl7CZps2/YKWv/5iRk06pZOS2+1gxkcRg1CYYA3uIe0J6Cwci2/Ccm
         SNBiey6iM2tRgQrUNgPLhG/oY5aDtChYbDvcxuQl5PTfKHc82+UNJ2FGG3aWiaxK525s
         XenvQAMbXoPPrWyRpQ3EN1esOYE7CrgNu6cNe9t3kuoGJeD6deRJZkKOuqas0hh8NWIM
         CLUQ==
X-Forwarded-Encrypted: i=2; AJvYcCWGdnnpYg05hGwSOvBRC3Wh+7Jd04yelYGe9TfsP3eNq7aWk1ZMo4SI+jNqY7wydb8/ffjeQzEjoEbZurMfZ0T+6jgekSEWwneC
X-Gm-Message-State: AOJu0YwDMP2uHQIaxB5+Z8T+P4p8sR1iHALiTbhY7uUZEFKcaLyYb/Eo
	Wlxj/LFXuFHwObF4oWnxzg4fiqUEeXROJN2kxlqVFDnaiZZ5S73WW0k0SUFxpmM=
X-Google-Smtp-Source: AGHT+IHfO/owEBm7BP9lnPuKAO5DpWRstnHDINCVoeaIA72yErxuQFvd8n5a5sk2JrKknQ3DPS5x9w==
X-Received: by 2002:a05:6102:3596:b0:48f:e6e0:7c04 with SMTP id ada2fe7eead31-495d82219eemr3397738137.0.1723233324797;
        Fri, 09 Aug 2024 12:55:24 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:105:b0:447:f206:4e7c with SMTP id
 d75a77b69052e-451d12f64ffls38078961cf.2.-pod-prod-07-us; Fri, 09 Aug 2024
 12:55:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXJ55t8XW5kD1jYpyxS9tNh7u1pxmMnL4ubwzNz4t9lRDnIXrHqKEqHcllNGXe+VA2sgez2xWuNiYHOLDtUz0g1rPWfxnh/TfQsgfgg
X-Received: by 2002:a05:622a:480c:b0:447:f211:43f2 with SMTP id d75a77b69052e-4531251b9c3mr29918621cf.12.1723233323717;
        Fri, 09 Aug 2024 12:55:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723233323; cv=none;
        d=google.com; s=arc-20160816;
        b=jwC8C7S05NIX/T0HKPdVlDAPUP7jpDCthciu6wdCw1USpLjl9VBYFX78YFOOpWAZci
         uwYByzEQz1HM7kXMCsQtGqrsMWDCErWGR9Y1z9/07CW0UD0AfPs6yRxbAkm6M7vptm13
         Qx7t5HUiEUhrx2IYsAIW4oGrWTIcpXYlbLqXGrNkuKOcLx2pNegdBRw47YqmDgrgYYE8
         CYQoIBoxWOMh8f73EMAVyzAq5OZJARD01RbCbWbJaS+r9C2T/qDE4Og0ghAVJUBLzNk3
         0YttJNeqR3M5TIz5qrpRV3fALzolEh9NPZq1/MDsymR0EwgX91khBAnwjM6MIAv5+oO3
         bb3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=QGE2nqrUaspqyQm5tfIQLwqnBh7JCh5+T4paHJ+FPQY=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=pBSjdXjVe0NWdkpUgPU30yGTpqdKCNCtoiPo9+VoUyFA5PVY574xGruILbBopcGQpm
         sb79RiU/uBcYo1mzmBKhgToerxYLY9W0/XphCyY7o2XRBC/Pc49ShhzBKra2GCJURQB5
         wF5iApJNvxWofqBUv03dKhx8eWXk3rvIOPWddUFo0D0xJuBnEVxpr2q2zbLi1DltIJJK
         q54wdQInP/JVH0IT8qM5V/Jxz3SR5KvUkFbvjVYCcuL+yU/7eTwQGUT/yxfMZSFFLoSQ
         wJ+gNvkzsKG3y7TuhO4n2rURtSQXCfkM2Phma9y7Z/rV7minHxwwLA553+LzZggDKR/8
         UGxQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=marbux@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c291aacsi2397701cf.548.2024.08.09.12.55.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 12:55:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) client-ip=209.85.219.176;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-495-UvmcDVMgMkOU1ZzOnv-sUA-1; Fri,
 09 Aug 2024 15:55:22 -0400
X-MC-Unique: UvmcDVMgMkOU1ZzOnv-sUA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 55855195608A
	for <blinux-list@gapps.redhat.com>; Fri,  9 Aug 2024 19:55:21 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4F2F51955BFC; Fri,  9 Aug 2024 19:55:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4C9B21955D58
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 19:55:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C191A19560B3
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 19:55:20 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-540--wGXI0-UP5KzsZLQ8Wjl0A-1; Fri, 09 Aug 2024 15:55:18 -0400
X-MC-Unique: -wGXI0-UP5KzsZLQ8Wjl0A-1
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e0e6cbec8caso2344994276.1
        for <blinux-list@redhat.com>; Fri, 09 Aug 2024 12:55:18 -0700 (PDT)
X-Received: by 2002:a05:6902:a83:b0:e0e:af58:f00a with SMTP id
 3f1490d57ef6-e0eb997be23mr2879247276.21.1723233317341; Fri, 09 Aug 2024
 12:55:17 -0700 (PDT)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
From: Paul Merrell <marbux@gmail.com>
Date: Fri, 9 Aug 2024 12:55:06 -0700
Message-ID: <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com>
Subject: Re: taking a screenshot using either Links or e-links?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000bed3f4061f458520"
X-Original-Sender: marbux@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of marbux@gmail.com designates 209.85.219.176 as permitted sender) smtp.mailfrom=marbux@gmail.com
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

--000000000000bed3f4061f458520
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you tried pushing the Print Screen button on your keyboard ?

--=20
[Notice not included in the above original message:  The U.S. National
Security Agency neither confirms nor denies that it intercepted this
message.]
                                                =C2=AF\_(=E3=83=84)_/=C2=AF

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000bed3f4061f458520
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Have you tried pushing the Print Screen button on you=
r keyboard ?</div><div><br></div><span class=3D"gmail_signature_prefix">-- =
</span><br><div dir=3D"ltr" class=3D"gmail_signature">[Notice not included =
in the above original message: =C2=A0The U.S. National Security Agency neit=
her confirms nor denies that it intercepted this message.]<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=AF\_(=E3=83=84)_/=C2=AF</div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000bed3f4061f458520--

