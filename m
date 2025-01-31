Return-Path: <blinux-list+bncBCL6X3FVUUJRBAFK6K6AMGQETD34EYY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 9907BA23B2A
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 10:16:49 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467b0b0aed4sf34379181cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 01:16:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738315008; cv=pass;
        d=google.com; s=arc-20240605;
        b=HPAsf6QR+2sKb2/NZxjNmGqbYx/QkCr4ZZ8pAhrJOwVKimU+yPUoPXcEnsytcehPX/
         N+ujPGph72tS+dTKcl0OArhgvknBqQzJKfAGhANg8hhMxvQ0YxH7z1qJBZCjY4rx4NeH
         macz0iLsTM1OtmsHS6sMGac9jvKw58I0yCcPq9YJwfnSn5/mrC+pN/f3vUSIWUIH2Dcg
         bB9mzr/Z4H8OWEpTAuZV0bZDD7HECU5AetQj1GhfnW8tjh1OFlFQotUM2l6laKJljG2S
         4fKYlqEvptQK8KLx7WX4K8NLVKZM5fc737/1JLbNkaKKuznFRKiv1Rnoj8JggVVs0LS3
         XIVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:references:to:subject:from:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=DYLT53Bn4rrw7WULcb/5VtHJ0E9lqmnllkO58bli0aU=;
        fh=qYpGx1kmtErM/kmd0mfYAJUFilkaAbds2VyxlRsda7w=;
        b=d5xbvkVFq8zOn6Sc3jeyb2Q0CWztPFhdPkkfGoOnWFH9N0ngHoBKKGSsh0luc/Emiw
         QOlN/cQlrtJfW+IjnnyWNTAVDQKdjBNZ0ZepRQje8k9CmbaTgVXYrg+Va5GPucGje2Sx
         SBTJVhl7ceR8MhqCDTEDzA+oUq5Hz2vL+2BPSJKQmOblcODa76zOtXZoLJsdeJiphNXx
         H5syYkkXoDa17tHZDqNwLk5cMrEKGn06XJGR26LtCoG4azoGL8c6/8ZlzIfSXgsU3WKz
         X34I19tex89akxeCR+GVRXqbm23Gg8qpxoiWcPUv2Rl1IGc9LEIQqfTJMRgd0+KbVuZp
         wQHQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=none (google.com: jpmengual@debian.org does not designate permitted sender hosts) smtp.mailfrom=jpmengual@debian.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738315008; x=1738919808;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:references
         :to:subject:from:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DYLT53Bn4rrw7WULcb/5VtHJ0E9lqmnllkO58bli0aU=;
        b=DxACsfsMXnAmDOk6BLbZN8cKc/mDcRodp9kmSG0b+xaV6BqqxNywo03zpvayOwrf5i
         AhtzZXGVjW97mRYY5OUq0eEX+75vCH13mN2OrvruvX/qg6HpHjX92W0ii4XcJahZoT/m
         qTWRzGIxHqUboE+c8ETMTKi1kVH6X3Px4ZKOXKRwUzP/bgWOpfDtSmNB9h+Wd1jWb9mx
         tZGpk5TsnLAPbh2jbMCn7IdzLpXo9tP/UdEeb5HvRbYMhlzoGX7ETyWLZaU5U+4U28LH
         J9ITa44pZrbnwwvL0UsMX9a43ROuVYU+TEPI4ihvvmcUo7Xi2T4ucAk0byz1pt/F9Dte
         FHSw==
X-Forwarded-Encrypted: i=2; AJvYcCVNLIhBVAcyWZIxmGXFORoIBshCSz5Y7TZX5spjWTxNRqhN2C14wjne2CAYXCzwBPu1VkydJw==@lfdr.de
X-Gm-Message-State: AOJu0YwEjnU7SXC3WW2Tr2ua+mbRKz3BGOk3vWy5C6EtyBxWbx7lPriF
	HaBxJtnTvkRzRiIo0WxwOUb6jYQlU40qV05/B0ZdraXzXnRbAJkU/UW1mWRMi8w=
X-Google-Smtp-Source: AGHT+IFV/GG5AflgQFdFkm1eA2o0lXGG5pgjBcUV2X5rUD/iyXPLr4ObKUDULvYomaPqn5JZszHQeg==
X-Received: by 2002:a05:622a:204:b0:467:6553:a85d with SMTP id d75a77b69052e-46fd0b91125mr167025181cf.50.1738315008414;
        Fri, 31 Jan 2025 01:16:48 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4f81:0:b0:46d:dee4:45d6 with SMTP id d75a77b69052e-46fdcfb9bd4ls4466961cf.2.-pod-prod-03-us;
 Fri, 31 Jan 2025 01:16:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWAr1W7T12WH4XYgLh12anad8UvYEMdDHm42GApFkddNl+amHkf476I1ZUtwQcPWHPEN18UtSbCokLaiQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:424f:b0:7b6:edd0:d752 with SMTP id af79cd13be357-7bffccc5edbmr1424933085a.5.1738315007566;
        Fri, 31 Jan 2025 01:16:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738315007; cv=none;
        d=google.com; s=arc-20240605;
        b=MzamZM4uGisiHjkQbgraUIIF75jiqE+t8CK8qZpkdu51b7kcPpXQklk0BUOGDrLTAc
         /wBurnUjagUmLUJ1gCCdes1Z5YIysNabIZbabLgImGhNdP89TSIAfg2EzvtDRkURiIZk
         VZp1nEN0n0VJwYva5yI9dsfp13aZedpdYQWPaTvehOLGOb4x/vAqFVY7A/y0HkAYJdbn
         uyBUd25ppQtJjhwcsOJCnBNa4Ho4uP/OkEpmKKkKmjmM9iqESDOla6U/hZzFVCTuw08g
         k17N+IbLbtG2QyLj2fA8+uuNoa9bZ9VWh/1TKnW7f7Dzd9RSxQBssyR59VYotMaiilvi
         DZLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:references
         :to:subject:from:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=IXlm2XX6tn8bbeYIWOR0PRbDKLXdMc6vl5reJFSlyM8=;
        fh=Y6nBsDXzyI5YoRECyjr7NDrMWpRpfKHyXKdHMSRae7Q=;
        b=kEc5tKuActwsjq/TNwXWpuq8uVIgq0MpF004FNuaP4n0PPBM7xy3es9gC/t8/ZZf2K
         tlettEGX3prnNsGMcCrGcqIAo2hc1wj4pIJxRGA5RHQpuXshK1F9XvPTIgW4tYMUxLKa
         /GFnP/SS7nJXAtK3k6BIZphSbL/eFkJ1S/wsP892Je/gFzvFkNSEZts7wXTewNf43wzY
         Q/h7WxqJsdJcpFxYovGxBBqjn4AZHZNNn690WT9rUjjDztEB9/1/OOmRPPy0svm6TaIW
         azqTKwQCup9lv49Ay6PGGkKHtvtzLpz18Fh6PJjG6K8HcUfTlaTGvthAw1MrAMMHLHBn
         A1fw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=none (google.com: jpmengual@debian.org does not designate permitted sender hosts) smtp.mailfrom=jpmengual@debian.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a93bfccsi340949385a.631.2025.01.31.01.16.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 01:16:47 -0800 (PST)
Received-SPF: none (google.com: jpmengual@debian.org does not designate permitted sender hosts) client-ip=82.195.75.108;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-504-U_TmKQGlM_mp3i3cmTG75w-1; Fri,
 31 Jan 2025 04:16:46 -0500
X-MC-Unique: U_TmKQGlM_mp3i3cmTG75w-1
X-Mimecast-MFC-AGG-ID: U_TmKQGlM_mp3i3cmTG75w
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 09D77180035E
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 09:16:45 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0515E1955F3B; Fri, 31 Jan 2025 09:16:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0271F19560AA
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 09:16:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 918C619560AB
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 09:16:44 +0000 (UTC)
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-568-cHswtd10OwiwGuLQcDUGdw-1; Fri,
 31 Jan 2025 04:16:41 -0500
X-MC-Unique: cHswtd10OwiwGuLQcDUGdw-1
X-Mimecast-MFC-AGG-ID: cHswtd10OwiwGuLQcDUGdw
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <jpmengual@debian.org>)
	id 1tdmi7-00F8TK-J7; Fri, 31 Jan 2025 08:49:13 +0000
Message-ID: <c9864bb0-b4b2-4714-8c9d-59955a88e0e1@debian.org>
Date: Fri, 31 Jan 2025 09:49:10 +0100
MIME-Version: 1.0
User-Agent: Thunderbird Daily
From: Jean-Philippe MENGUAL <jpmengual@debian.org>
Subject: Re: orca+mate+firefox tutorial suggestions requested
To: Rudy Vener <salt@panix.com>,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <Z5vtzSncAsVlFYgN@panix.com>
In-Reply-To: <Z5vtzSncAsVlFYgN@panix.com>
X-Debian-User: jpmengual
X-Mimecast-MFC-PROC-ID: fClR5s5b_1j0hTCc6aRqFO2se7bu17hh-7MU6YlItoI_1738315000
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -9EsWIBHCssOrm7Ki8t4xgv108UpPWFLqtuQUUCQts8_1738315005
X-Mimecast-Originator: debian.org
Content-Language: fr
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jpmengual@debian.org
X-Original-Authentication-Results: mx.google.com;       spf=none (google.com:
 jpmengual@debian.org does not designate permitted sender hosts) smtp.mailfrom=jpmengual@debian.org
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



Jean-Philippe MENGUAL
Debian Developer non uploading
Accessibility team member
debian-l10n-french team member
President of Debian France non-profit organization
Hi,
Perhaps this wille be useful:
https://en.wikibooks.org/wiki/Using_and_accessing_MATE

It is a work in progress from the translation point of view, so now it=20
is mainly translated via IA. Another wikibook, more specific about the=20
internet, exists in French and will be translated soon, but it needs to=20
be reviewed and updated (it has been written since 2 years). It is not=20
still released for this reason (needs to be reviewed):
https://fr.wikibooks.org/wiki/Pouvoir_Acc%C3%A9der_et_Utiliser_Internet

Feel free to translate it via automatic tools, they work all right for=20
such text.

regards



Logo Hypra
Jean-Philippe Mengual
conseiller num=C3=A9rique coordinateur
28, rue de la Chapelle =E2=80=94 75018 Paris
T=C3=A9l. : 01 84 73 06 61 <tel:+33184730661> Portable : 09 72 49 76 75
<tel:+33972497675>
www.hypra.fr <https://www.hypra.fr/>Facebook
<https://www.facebook.com/hyprasoftware>
Twitter<https://twitter.com/Hypra_> Instagram
<https://www.instagram.com/hyprabettertogether> LinkedIn
<https://fr.linkedin.com/in/jean-philippe-mengual-800133135>

Le 30/01/2025 =C3=A0 22:23, Rudy Vener a =C3=A9crit=C2=A0:
>=20
> I finally got orca and mate running on my linux system and now have to
> learn to use them. Can anyone suggest a tutorial geared to blind users. W=
ho
> don't use a mouse?
> Assume I know absolutely nothing about the GUI interface. Which is absolu=
tely
> true since
> until now I've only used the text console and have quickly determined
> that trial and error will get me nowhere fast.
>=20
> Thanks for any suggested tutorials.
>=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

