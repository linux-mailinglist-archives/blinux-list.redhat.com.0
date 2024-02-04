Return-Path: <blinux-list+bncBCRNHOFA7YJBBGOF7SWQMGQEFZHE5XQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 875A3848B55
	for <lists+blinux-list@lfdr.de>; Sun,  4 Feb 2024 06:37:31 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-68c4f138403sf38751636d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 03 Feb 2024 21:37:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707025050; cv=pass;
        d=google.com; s=arc-20160816;
        b=YcgW1tsOLC6jPnzbywq1nyoG+9loGvSPnK8ii68BFbp4blpPdrRm3T+U4cx9qwFcjq
         t0qEd6MIkHLpDB9FO+AQ5SC1PuYbanAIyQZhMl4LNje483TgfU8L3C1YUkZ6P2GSI2fR
         vtZnS8xsxIDZUrCl/5Sjxx5V+XC+23TRR6aWnikn+6nXz/3vnj/fevsPsIxXiO1rjSHn
         SgHICbm/SZDuifeATL1bhSazyBvNAPUW/5cdMRVM3k5bbRf5QoYaZAAab1Q+cx99U4Qm
         V4nmLhSrjBtFfHVLAyLy1cdR845jKE0FKkTjF2k5T8FLaCCvC7PYQX6YWWtAqfdVb16F
         lfSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:references
         :message-id:date:in-reply-to:from:subject:mime-version:delivered-to;
        bh=i39b08csnT9N+/5VX2+Qx9RuqJ3wTStCikzoWFilXLY=;
        fh=7n3e5THpMteqHDMbaOOHYr1i/xefwpFz6WHMFf2axRI=;
        b=ku+0Omk3xjb7AsoFeaYy4hxjGNtJtFmzB1oaMppDM+Vdjdyk/V/vY41F8nsKnafNHb
         oA7ANTZ2EavvEUjjMvIdoGI1j4hn+Ow+LztwKCuXA52VE/eUM8rlLiKySr/XRLAQvA8D
         F8Da9A43YGzdLaHOtGQetf2Xr1Kuu35qgi8MQvpuvvtXGM2AAIq92dJGnxhiBmwfOBaO
         6C4ytJMhGWiSJcYZoGrnjCd+szoKsvMItIttb2XlOdzv4urL3ZKQ+2KSxD+RIMqYr4Hj
         2+AUrXvyxO+sUiLvh+Z0ozM6Z2Zk4EQH/BRn0iJRdhoS06ZEotYfudFRvVQnXdDwyZR1
         TfbQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707025050; x=1707629850;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i39b08csnT9N+/5VX2+Qx9RuqJ3wTStCikzoWFilXLY=;
        b=GU6CJMe5lEG8ObGKSXWZ1E7kXPCHAjOpSF3/J8HnyaQPq2pySlC+mmi2oN6+YMdKAY
         DkIWnhjVD/VSN9uyipqo3n7WA3fdeZ/SW79fDWvt1oIHiJB4iIJrb+9QdIvas2am6Caa
         9VcF4DnONv/Uk3qRA6Qr/8u5F2Kgd/mKLjCmvCsDItLi72/uhs3LPoIiCkhi+SgnUwUG
         IkHxLgoApdcwgCj1bgcZPkqU0zNYFQ6TirSlvQr52tWd22XQYwUWb8GJFwL2jDsz+n/C
         7ghSkd+7aRhctRHzw5tUt6HLEUggah2MrW/0/QpE7pio4dZG0vjSmDyxxO7Tmaoc1VN+
         NDBg==
X-Gm-Message-State: AOJu0YzebyFLkoI2TQH+ISsUyZDgNWEYVKwvIFEOeIz9IeRJUW/p9sGS
	6TAwXEiFfzScdc7mh1yoZNGE8j9aAGcmZ+zA9BRkWc+8Dy+WpW2lD2gYUbc1loc=
X-Google-Smtp-Source: AGHT+IHTXQKAyy30uFz9NgfbCPj8i+npvMUIByGnj6b8KyfwmC2haLHdNxLZsTJ4clKFutlQXdhNJQ==
X-Received: by 2002:a0c:f006:0:b0:68c:8028:dc6a with SMTP id z6-20020a0cf006000000b0068c8028dc6amr3123389qvk.9.1707025050009;
        Sat, 03 Feb 2024 21:37:30 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4dc5:0:b0:68c:5094:f91b with SMTP id cw5-20020ad44dc5000000b0068c5094f91bls456351qvb.1.-pod-prod-00-us;
 Sat, 03 Feb 2024 21:37:29 -0800 (PST)
X-Received: by 2002:a05:6214:d8d:b0:68c:96f2:df78 with SMTP id e13-20020a0562140d8d00b0068c96f2df78mr4414431qve.2.1707025049251;
        Sat, 03 Feb 2024 21:37:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707025049; cv=none;
        d=google.com; s=arc-20160816;
        b=r9j+v6vnkL6CHRuhRhzGfbv2/OVJa5rpG7lg6gA64GuxJuD9xZwB8ieLtQKOPRu3Rr
         S6FeGQt/9MKQGZa2UT7yps+lXWC2K7Nx71A+nybqvo7mXPybWbrVg5Dadn0duPbUd8g8
         PxoTaD9fxtzg9WKYQwrTWU7ivmocC+h/tEL5gXkG6DbdDmCEkGHYeYq0EjuTKRyPigBN
         YU2AMzCpRwwCCEpEb/5l9dpdzrTV+8sqdG3hzNs0WQC4EKVsAtnUEtO4TDRYdQ9zIZ+g
         A81bW9hdl8/RlbSARnEuE8GUvVxcn/p29CMDLOascrZQaJsMUnIPa7nxKhh4eEEtWfuh
         d4XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to;
        bh=DPeYsvcYFXqBbBKzdIRwUaY66ORPtVtiitaWqHPGPHw=;
        fh=7n3e5THpMteqHDMbaOOHYr1i/xefwpFz6WHMFf2axRI=;
        b=C5Zl40BY7pnLzse+22dKys/A940KPgM3Im5//81toD1UrauAoMJleqmKwIhlp0FSO3
         aOwmltAHYdlekjMR3YM7SyKB9ZDgZ48cGiTxTQE6AWN9kptDt0k5tbUxmdGlcNQLLnan
         W/vfk5BJq2LLRnExbKpW/mmRuPQ8g08JeugISwo7Fai3oa+RJFJKJ/915gup38JqS/MD
         FxQ0hXxx0PstVD4sXCA21JvbhpYN/TP1PYIIEvM/4am7UuqqbpGKcICakxmWl/FcTZkp
         O7wlz4HU3g6gx10I7zjR4cofyRt81XGnMpMMR2AoYgxfMNc2WRTEZVzspIOlbC6/z3rt
         Y0Ag==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Forwarded-Encrypted: i=0; AJvYcCXQsVSy//nB7k+n2mw8dAToBKdrbhQQRIQAwzACpAkXcAZIY5b13e4GmWQXFbd+W+TzKlO1FR2mid+aAEG6d4vo+R/FaryzGww7bdnw
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u5-20020a0cec85000000b0068c8b401467si4124287qvo.597.2024.02.03.21.37.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 21:37:29 -0800 (PST)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) client-ip=209.85.214.180;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-4JjBmUwZN0aHCYvAHvNXeQ-1; Sun, 04 Feb 2024 00:37:27 -0500
X-MC-Unique: 4JjBmUwZN0aHCYvAHvNXeQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9541811E81
	for <blinux-list@gapps.redhat.com>; Sun,  4 Feb 2024 05:37:27 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A64A61121312; Sun,  4 Feb 2024 05:37:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9ED871121306
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 05:37:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DF26811E81
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 05:37:26 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-527-fC8eF_7TNua7qTPVDNMxnw-1; Sun, 04 Feb 2024 00:37:24 -0500
X-MC-Unique: fC8eF_7TNua7qTPVDNMxnw-1
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d99c5f6bfeso2357595ad.1
        for <blinux-list@redhat.com>; Sat, 03 Feb 2024 21:37:23 -0800 (PST)
X-Received: by 2002:a17:902:e5ca:b0:1d8:e1c0:1bb8 with SMTP id u10-20020a170902e5ca00b001d8e1c01bb8mr4114118plf.27.1707025042985;
        Sat, 03 Feb 2024 21:37:22 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUdz9fIMtKpn9HbzhkklZHZy/u3Dm8kWLbJLEpSJBGsJNQldOfLJOIlAJLrQMYG1D9WecZWA8OQuvASARE=
Received: from smtpclient.apple ([50.123.75.187])
        by smtp.gmail.com with ESMTPSA id mj8-20020a1709032b8800b001d8dd636705sm3996111plb.190.2024.02.03.21.37.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Feb 2024 21:37:22 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Subject: Re: Programming lists
From: Rich Morin <rdm@cfcl.com>
In-Reply-To: <20240204.052200.093.3@[192.168.1.100]>
Date: Sat, 3 Feb 2024 21:37:11 -0800
Message-Id: <28E8399A-4DC3-4366-9D55-2DE42241D727@cfcl.com>
References: <20240204.052200.093.3@[192.168.1.100]>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

This reminds me of a question I've been wondering about for a while.  Is th=
ere (and if not, why not) a multi-topic forum for the blind?  It could be h=
osted and archived in any number of ways, have topical sub-channels, etc.  =
If (for example) the relatively small Elixir community can support such a f=
orum (https://elixirforum.com/), why isn't there one for the blind and visu=
ally impaired?

-r

> On Feb 3, 2024, at 21:22, 'Rob Hudson' via blinux-list@redhat.com <blinux=
-list@redhat.com> wrote:
>=20
> There used to be a website called blind programming, and they also used t=
o have a mailing list. It's been long gone now, but is there any other grou=
p that takes its place? Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

