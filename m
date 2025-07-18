Return-Path: <blinux-list+bncBDM5DGHN5MHRBY7D5DBQMGQEQABDQ2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DB3B0A22A
	for <lists+blinux-list@lfdr.de>; Fri, 18 Jul 2025 13:37:09 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab7fb9c2d3sf24730791cf.0
        for <lists+blinux-list@lfdr.de>; Fri, 18 Jul 2025 04:37:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1752838628; cv=pass;
        d=google.com; s=arc-20240605;
        b=lLGv5nak/5YacF+9Lm3RIziOt4CsobnR4rhzM/VRBwHe7Ut0Ltq6Vf+mZX3J1bQYux
         JP8G24gKjX8xssMCxwa5knaWQr0+RDIRpMoLNiyOqDk33eNnLGCdLYdGCahdpy3lKik6
         5gVqWKFwoj8W+j4cxqfmcOlKoFsXuzu/+SibTnVZXGMsdUDKzaHPOKLSuKCjpeGubTOp
         QuB8RDPREHNbYgjBnx9fScC8rd4HdE8Jpq5zPxAjtiUn7erHVyYs21Uivhf8ophsJWip
         ycvwtw53ZeAoclH0wSW/RuYuqBGr+MQbZkyWgyhUIW8rsTQHdh4ZKRnVRqDu845bKeeM
         zjUA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:date
         :message-id:subject:mime-version:from:delivered-to;
        bh=hSkLXik86lHPWHstCLCHHVzCrWOPdcx3uP35TUGYjVM=;
        fh=eg8v0XmH8uhSaxrrdiXBzwIl8IdEjsxjwob/EysDIPk=;
        b=KA7Fb2C14FoCcTvxtV61Fae3WnbvZhLfMR2Elp1BrdTCwX5f7vG4qqbzSVXqpqrW2J
         r93s+ls6cRY3zztsjRxGJ66kYpZOXYqlFRjvJ4E1MKhlyKf9oEEsTFyU42klV3OzFVAR
         3T78EaNMx8RA60Y5qpNXSL/iRn5tV6GLlM4N+H3k7jF25A+WHfgJdYHOXpii8+F7pImO
         XJY9A6unx5RiF13ne0MUL5B84U1UDHs+BaY5Zvl5/GistZXkFWfzP85nb75tr7LbbiD2
         tqmhn+7XfDB5lwWrEp/x7KF1osxGu3ygQ/anPeQ82rLf85Jf6Sf61YgsJIfeYuca9o/9
         kPZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=iCigAHBb;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752838628; x=1753443428;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hSkLXik86lHPWHstCLCHHVzCrWOPdcx3uP35TUGYjVM=;
        b=m5Y0GTyhN4x0/owjf8lPtZvcdMORzIDfzJU7i80bF75637Y6/bMSee9We72BgvzE7u
         gZU1DDZkjssUjDT5qJydk15/yF8TGcQ6wXP6DPesJNwyjWx9bpG5T/e25V/A7+/bO2KL
         n6SEYs2UzZMNRfS6LcT4wqTcl2kHqYVataamIW04dAED7gRtleAwL0ZclgV0ZbjpfnOU
         MRPWsypIc8G++nWL4MiHxHqKNa7wTzrPjCzGpdqjQ2AtO7OgMO6MGMVoiZ8hrHfeJzQX
         ZZVEPx5hVVyzIZTDihAhM4KjgAEOl2XLaMC2GzAUjTJTR8CWaIexR5qKpORcAglt0Nke
         iZfQ==
X-Forwarded-Encrypted: i=3; AJvYcCUH6QroZ+eH6JPggC8ysXeevWqKmrzqNVu9TpsF0kpoVpW8650/T9+dIgeScAP0SS+/o8bGiw==@lfdr.de
X-Gm-Message-State: AOJu0YxJy72h+l4yaCOxbmWrqTBS1BH8yQE0qEnkYfnU/j5h6CBHwW50
	j+oqPysNXdyzs9KfoPxuivNL7mTqHD/DJewU0D3ZPajjGII4PZLVzp0GCt2PuteqHjo=
X-Google-Smtp-Source: AGHT+IF9PwqwkNtZedQTA3IFMt0y68OQt4yy6lTNfThA/PFaTiOzsasPXBMneian5IdGcgOq94+I3A==
X-Received: by 2002:a05:622a:2cd:b0:4ab:38c1:f9bd with SMTP id d75a77b69052e-4ab93c82737mr129655901cf.12.1752838627745;
        Fri, 18 Jul 2025 04:37:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfw8guh1ixkYZ0AuaZ/FuMOzz8+myH7R8Vef0u1sD2RTw==
Received: by 2002:ac8:5714:0:b0:4ab:70e4:7a4a with SMTP id d75a77b69052e-4aba1a594e0ls29881671cf.2.-pod-prod-08-us;
 Fri, 18 Jul 2025 04:37:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUxn/NXM5l1VdC7zVeJNmUcxCpEUOmeMNOfMDyCno1RwFIWVKXF2CoHTRRC02CQyn7tMxpZG4JcvooFWQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:1448:b0:4a9:cff3:68a2 with SMTP id d75a77b69052e-4ab93d88915mr147047461cf.37.1752838626567;
        Fri, 18 Jul 2025 04:37:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1752838626; cv=pass;
        d=google.com; s=arc-20240605;
        b=A9E0xKk+y/fPZkiABPHeb3JRyWA8IlCPBxCtpWQ30yDaStHPuiLEflJB5rFNjJTcxM
         Ic4DAAukpyRZDN2ex1rn424HEHQBqfvGzsdvnQFfEBgGAzrN/n22sAcYc1Mrz0tG86oX
         prbtKf1eEEoS9LyQpctKKmFNGEqpOWTQKJjRNT6eGNeRvnL3ueMcYo9XGXtfD3PUPc/e
         hjT3i1b/7Wq6Q7dn4GkyQJZW4MLekLOiW4ZgKOT8RSzwV6VsNBg+ttLhVcpekZEWAF1L
         S9zM5wpvSeb+IIjUvqbTIg6x+gvUS6vjyF+u8KmTNmWlWPs6G/3ZvX/BDWKwHnWWRVbf
         o2Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:dkim-signature:delivered-to;
        bh=rGNDQokdDzTvtq2hHVW0whKE6zzmzuNBCLzdCd1LdlQ=;
        fh=uyQVZSRoA72ttR5tZwCWZCTwCUrLSPrGFeDHsWdY6oA=;
        b=cyzemYXjaPOozf2upSdBwRBGc2jOa9mIZeuecekPgRV6wf8FXesyM4slwfdilcZNIM
         YHJJ/KgBMYbrxUKrdz8gqjHBOXDTK1PkfFmMbDpDuJmmLA7qhSG/FUwxNWr7MWCnhDLW
         K0LxxOur5CYb40BD53YlOUjl8eLG5aR313jD0/Hh37Fju2RMkpSpmpliq7m3AXi9oHk5
         E3/uj4iXwdWWIb7LoLK/jAlZLY+o4JR20UeB05cfRleZnGfMyBU32gtUNT6ryJ7QM7Iv
         Q9c0EuzgKOK/Bx9KYQ3DT3HatRfENQ377J+OK/4e7QivMcQXxlC5fu4CXB/zRXip+qHn
         Z7gA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=iCigAHBb;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4abbd2b2f0asi960901cf.448.2025.07.18.04.37.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 04:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.219.42 as permitted sender) client-ip=209.85.219.42;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-2ZSfvnyuM9-1PtnuWbftbw-1; Fri,
 18 Jul 2025 07:37:04 -0400
X-MC-Unique: 2ZSfvnyuM9-1PtnuWbftbw-1
X-Mimecast-MFC-AGG-ID: 2ZSfvnyuM9-1PtnuWbftbw_1752838624
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 209FC1800281
	for <blinux-list@gapps.redhat.com>; Fri, 18 Jul 2025 11:37:04 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1B5211966650; Fri, 18 Jul 2025 11:37:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1857E196664F
	for <blinux-list@redhat.com>; Fri, 18 Jul 2025 11:37:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7742A1800281
	for <blinux-list@redhat.com>; Fri, 18 Jul 2025 11:37:03 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1752838622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=rGNDQokdDzTvtq2hHVW0whKE6zzmzuNBCLzdCd1LdlQ=;
	b=ixbgPDEEmdxLsVxYCyJyoj0+6bWHLFyu4lKkyHRicc55QYLC8gl+Xg/gapmuklfs0uyZON
	zr5klwn9INLwosEGQLlava4iJNu4FeJspA0cS9IVCGGD7X0+Tv+NooSCKHNaHaZKzTnDms
	eTploJdZ/ZAM15WAz5E9Kn4vj5EciOFxU4EGoxhEEwinfgXbWlhY5zFeXL6AS3xWWnr7tB
	KgaWwosqBd98DfZ6YR+7n0gDm7B+9cAjVlbgdZjOwAZhqV/KNPhzBjcdTOHQj89RWZAJvG
	llesyWpUwKd7tGHdoEair8sP+MkI+AoWENMSIN3mw58UMxbwv+vlp0RWvqn1pw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1752838622; a=rsa-sha256;
	cv=none;
	b=bfQq8T6kAIvkn4r6DC4btK75gwVmsW79OynvecMD9v6v46jBY4wChLs+nvoYJWf4hIe+FO
	MkRrM00sYQvtquPdhq4LmIImkK0x6S/4S3W11cJ5IA6A03hBolDDi0kKxwHIa4bIna4vUM
	3B4k1TATuR18guAlRmdzaMcJK8Mz7lBENoBZ4/IMPfJnbBtZhdY4eQeGR97Xq5VLl0+/Yl
	hKRJWmVxT8wtD9HtT+WyB6YkfL/YKJpv0HP4iFXJ0+mzKEt2WwL38MXvmwJ3jwN61St1/N
	O4LFBKFuC+IjP2f4wUyCIjxp4MYZNvf8aRf9m/QvyjF58dPCgDYPlnMRd55tyQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=iCigAHBb;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of ilovecountrymusic483@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-45-MCnmPxzINkiNyzHhw-6tCg-1; Fri, 18 Jul 2025 07:37:00 -0400
X-MC-Unique: MCnmPxzINkiNyzHhw-6tCg-1
X-Mimecast-MFC-AGG-ID: MCnmPxzINkiNyzHhw-6tCg_1752838620
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-704cb8b1314so12340126d6.3
        for <blinux-list@redhat.com>; Fri, 18 Jul 2025 04:37:00 -0700 (PDT)
X-Gm-Gg: ASbGncuYg3tftoZTxwgY0Iw2J91Ny8E4pwHrFR1iROocLHPA/wfnDQT2DBj4OS8hUvs
	CvUZOSwTRft9Jj4Mgno+KwpU7AAQGGIBC5Pe5U8xuOqqWjJqezuaLCjALC7s0F8cEYRlB8tkIG9
	FoRB/UgiSkRWs8sxY7KLjgCOgQoVyShYYf/1/aGgDAbCmNF/EtEmx6ipajZkjRIrHl3DsQZi0aq
	UVrTgQuLo3rovgcXstVDMa6uW77gC0rK6QIM4gPAl4FlSgXoMyR3fczVUBo+7uSEFAwxrU9RblL
	aL0BZ7uVQeoQubykaUOOH0U5jrYBLDzrBIpO4+6JllrrElM8xOPxIIt7aKMaC+nfWINVXKtZzrj
	vAv1s/r951RSYfkysNusYeznN8wA9nWFo3gPJnvg5Kkbq4wblL7mplfiO/CO8lfc=
X-Received: by 2002:ad4:4ea6:0:b0:702:d83a:6695 with SMTP id 6a1803df08f44-704f6ad65a5mr197134396d6.36.1752838619741;
        Fri, 18 Jul 2025 04:36:59 -0700 (PDT)
Received: from smtpclient.apple ([2603:6011:ba01:8300:523:9495:aa5b:ab2e])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7051b8bba61sm6409016d6.14.2025.07.18.04.36.59
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jul 2025 04:36:59 -0700 (PDT)
From: matthew dyer <ilovecountrymusic483@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Majer issue with gnome setup in fedora 42 with orca.
Message-Id: <7FF225A2-DA91-4EE7-A1F3-8D92208F698B@gmail.com>
Date: Fri, 18 Jul 2025 07:36:48 -0400
To: Blind Linux <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kXuC9m45jfkocZffpvgoGwPUdhQlaulHWZPQymB5hGE_1752838620
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: ilovecountrymusic483@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmail.com header.s=20230601 header.b=iCigAHBb;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com
 dmarc=pass fromdomain=gmail.com);       spf=pass (google.com: domain of
 ilovecountrymusic483@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
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

Good morning all,

Yesterday I installed fedora 42 workstation and found a major issue in the =
gnome annisial setup.  When trying to use orca to select the timezone using=
 flat review will not allow me to click on the next button.  In fact doing =
so has no effect. =20

Anyone here know of a way to fix this without having to use a 41 image and =
then upgrading?  I thought a bug was filed during the rawhide 42 cycle, but=
 it still seems to be broken.  From what I understand the installer is brok=
en in the mate spins.  Thanks all.

Matthew

2

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

