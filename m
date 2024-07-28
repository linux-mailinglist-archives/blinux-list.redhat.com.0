Return-Path: <blinux-list+bncBD6J3OOK2IIBBVGGTK2QMGQE6P3UGPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 3847F93E925
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 22:00:22 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7a1f230ad32sf63478385a.0
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 13:00:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722196821; cv=pass;
        d=google.com; s=arc-20160816;
        b=wYDu2YRkZc/6t8jjyV27EOrIkaEbUBjlnVEdTSZz/Fd5rHtkMNFazvQC5EJ4Lbx1VR
         f39xSCyWaj0qAXjMQeza2E1EOIwYCF5AbJa7RB3/jI4acr3+f8NtWio0IIOGEXLxxSEw
         wpqNtgARpIwYJzBiznRJ9CXO+/75jSSRk5UzYuPT8yQw4OAcLs0IWp+vBq4E8GHT1AfT
         KjiNgCc1IY7C45jYoLCZjTdLFqpZHBHed4832gAyNDJ9cxl8rndfCxE+Dl9eQuqWTZa9
         lCg2o41X3gPLjHE2DdTmQg2IFIVApw3jeWFox7EFdpzYOIvC4nd0oHjHkn0DyJQh06l8
         tItA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=RINmPnnM4MNGHZIGtY4ixs5MRbgW8tDsOX5UERj2gnU=;
        fh=xu17Ccb/DuhFsI2otXVv84ZsgTElcq4muDGtXareSw8=;
        b=zPy020Ja63TSr9k9623Fu5Y89vC7zCI7+kmEeuWQHBXYKCy/KhV7qojXcBgOY83oeJ
         +F0KvYeZ4In0VcM/fR280hbJFECeK7F3mKtQFV4R5l40IO4kSXYyTLz5OYk1BpMtPquH
         pR80R1XlceAULqNJhWxlsZamHXOl6CleWAieiGx70E/z9vPxtttDEB7HGR5pPTYt8QIH
         2Bigapyx5MuOsYTMKROjQwQib69QR83tS2qqyXk7Kr5NHDEmcUloOpdkbUQN52mFyBRu
         0qL/Qt9id5k66X8TasfHN7M9CHb1Z02ZhXivkXjSx4ZK8NsO8rEnOOCUxnKwa032o3lQ
         C19A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722196821; x=1722801621;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RINmPnnM4MNGHZIGtY4ixs5MRbgW8tDsOX5UERj2gnU=;
        b=vpJ1UbdQx+I7hUx7oYaF2R0LarQRXqfe694N4kaSAt0A0AzPKwnqyn6YHyjNl6zAW4
         BmN+/S1rgezgHEgbVc78xTclJ37iHmxAV0DWOZ3yaTPN+lyjLlwpPPpXSzpqXPSs2oSw
         S4gPKXZUs+/sJrBLtCAWoO/1KFC/IewLzwN3xzMTXl5mEYjQE0ADqQ/cahG7XgiATZEC
         qT+u9YvA3pqwxFcG8VWpHisjKLhXT4tkLmhVqEgZ8VELfZvLpyX+oe5RFOYPTBlS8elq
         lNrBjtL1zYSZWggSRf5h4CmCevxgQbNpD91ADUPTMm+y0pSD4kPE57fgytJ9U0qHlDY+
         cjMw==
X-Forwarded-Encrypted: i=2; AJvYcCWrEPze24HYzWbrpEhbhzSRuVgbkGrzeTAhk0xk3ovGJW7QrAclLqCI0cLj/OdpMpc8n2aaVt4lpnLjPn6YKwaF4Y6AM9pO4d1L
X-Gm-Message-State: AOJu0YzmmcCrcNjg0bWfsTMh9dPdctZr3BcsNvdCwHL1Ihij+qo5iSLa
	RJ56cAvEtXP6aEQrClQzTNfnZYA6KxRQt4tfkwi4+MnS7VNy4aHE4zVDex7tU7o=
X-Google-Smtp-Source: AGHT+IFyXJeaDMZBN1yUYI5nWRikIhxdQgKJUEzRhuKKy4QfxBhusCZYrXTypAV98KiYUJ23E9sECg==
X-Received: by 2002:ac8:5806:0:b0:447:dd66:800b with SMTP id d75a77b69052e-45004dc7561mr92448621cf.36.1722196820601;
        Sun, 28 Jul 2024 13:00:20 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a11:0:b0:44c:b727:e2af with SMTP id d75a77b69052e-44fe319feb0ls68690191cf.1.-pod-prod-05-us;
 Sun, 28 Jul 2024 13:00:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVW8mGDqxEXcVJCeSwqRFwLuymIu23m9GY3rbc4B04nejbLJ2dEEuhln8ThU7LlFEhUjkeI89qFClscMpj83MmcEfLFzle4bObCtZOP
X-Received: by 2002:a05:620a:c4c:b0:79d:a265:cc95 with SMTP id af79cd13be357-7a1e52fbd12mr588464485a.65.1722196819750;
        Sun, 28 Jul 2024 13:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722196819; cv=none;
        d=google.com; s=arc-20160816;
        b=m+BbVVh5ZQZcE1C1lNGiCXpZWhxDo5MZfjp0RjtLrpTfwXeow/C5EzI0ZyxtBvIHGI
         /Q1R7tagExFvw8Hzl4DoTgYElbURrw2LMZ2V+UasGXvBl7Uz0EMfdI7vGxgFjvmfWR4h
         LVs0L7LXco3PU3UZa7k6DTHdup8hqWFn97hbCgTUfLjHDaxOPU4qU6fQ2L8T+IIe6dyj
         VJXiN9QsjXkMsfEnS42oTNo4Eh6UMEkQ9SjYEybzx+ri1/Pn0qu+ZteLAUwxTOtsqFPN
         sXKn0cdJHS9OohYsMGC6iITIaUcpaEiShVVGWWogbHV3yE3BMoVXFbyewGB77cs/0/St
         GPMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=dDoUh1YIcigtaq7M14U6HvEeqmuw3EZEZe8CLZX+A9w=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=YgRbRuauEXUYuePJ8n9qR0a68ApbDZuWns3IGShVsHSWxoyHeCG65pKMDEIJW301fS
         dd1sycCh2WXmIQWVDX5rVD1Bg1hi6PBD5XX2MuH/enhq+NBaMayMVt9jtd+/jrzh0B2Y
         hdUifdsyNUrViG2I/llAQGQdtBYVNjJJjI8417e94Jj5S9dp8lMuGeXI0mA7Zp51eOe8
         QPb1sjN3Okn0OOfH5frtvvmPIkjzaoCDA4qLhvKQUXlL1vhfYK3aPxZHbGWTjLg4ghDs
         ZDgIS4Kw0vbtzxTbpCf92D5zMibaBciy/r3drCQ4Pk5HFwQDOzsR7OYVvdLBUZG3Ds/L
         McCw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d746559dsi888907485a.504.2024.07.28.13.00.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 13:00:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-347-hQ--8xUTOGm8CEIo53bprA-1; Sun,
 28 Jul 2024 16:00:17 -0400
X-MC-Unique: hQ--8xUTOGm8CEIo53bprA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DB9DA19560B3
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 20:00:16 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CB7CF1955E89; Sun, 28 Jul 2024 20:00:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C943D1955F40
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 20:00:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 241271955D44
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 20:00:16 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-230-b6gvUzkvNNmUhxqi0tmHPw-1; Sun,
 28 Jul 2024 16:00:13 -0400
X-MC-Unique: b6gvUzkvNNmUhxqi0tmHPw-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MDQeU-1sNgDK0WAw-005goq for
 <blinux-list@redhat.com>; Sun, 28 Jul 2024 22:00:12 +0200
Message-ID: <20240728.200136.645.5@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: making YouTube (etc) videos more accessible?
Date: Sun, 28 Jul 2024 15:01:36 -0500
MIME-Version: 1.0
In-Reply-To: <99B4EEFF-D063-459A-8C68-C437E4758811@cfcl.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
	<8eedfc39-ac45-444b-8759-c76cb94406b9@jasonjgw.net>
	<D4A63476-AD01-4437-8F3B-AF0EB0B214B4@cfcl.com>
	<20240728.190255.886.4@[192.168.1.100]>
	<99B4EEFF-D063-459A-8C68-C437E4758811@cfcl.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:4bECbgCJtgo7HffzrxTS9oAUWxlRwYdD9c8PUbj35Phlk2ku9d+
 87fMX7uroDUMjopladiScpjtkPMWFcwA/XZDqiDh8H4zdjNX6meOwqwZghUwWSScgRyAYk+
 rvL3vIyZqttiv1+PFXP7b1HIiEP2VxoahohAYcSaJ6hL3pZWrP0vu1IRWUBL28PxgX7U7+r
 wARzqv3t+xFAs7EiLZXdg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:4skH77Q4+Bk=;g/n0EOF3VN9zmJpnikAUyswpDPD
 ICv3kCbL+xHguT7FiUqPXFH2LCGUd8vvkLFsM/2v7t56U/saWjgxB0KR1Yxjlb87O1761tni0
 yHjpi29YBEZO6RpRmnjuuYxn5ip8oU2TAbRIHLH4rh2oLEbEI+uaiT6eUFp54U7NJgsEr7w1s
 7VGrtsDt85O4cHPT2uji55dIb1FO+c/ztgR/5sDiCtf2oKDAGpjc8CD2oHTIsEaWbBiki++Zv
 dAJjMXK5/L19QDPUjULuUsYrZm4Le3UOa1wZ+iVOul7mpdcjqrl6NVFm6tMvkJi6yq0XU4KpC
 2rUD312T3cFvQTt+9JoL3iNZfR3EZBremqeg3qRoxCrypoOyr6+Kg4NPPWU1NKg3e4xlDHyuV
 SN7CK8wbnvslshXubVnbxF8GigxOsxTW3CsIoY6j1pdzVFkv9pYRvKqlS/Po1ap/kTSdIzQgE
 z/MzQLE0Fia+wGpldjSIA/Q2WXzZH4pyAfOvhTzvAQhc/iXNlbJRWBi8Xxoi+mdKWLjiyDf5e
 cDdBu6DLN1m0AZfreZPg2IWqS5ctHG0OqslXi1fS4izN7VZEv9fgmIM/Sz4AoI8v5mPPWEpxe
 NDAKKPAOX1ZCg7w9+yW3Yx3BRV3BvTMjRaZtlPuXvPoVbufMMe4hapPyqoP4d0ZDDEuwRaftz
 67UqGZLqJ9zGp9o1+ksyfc9ogzDF0JjX85wGy4rUQtZ6b6ly9z9zJhB3yjwp2LD2s9JykB6rE
 4W319EGFpkjwGP+L0QRnkzhpdAyDBs64t0q3aE17GmjSM5CS+0SLAhF++LncMh8DyV61TKsqH
 S0fpukP1BPEUOx7KVSetdlggk4pfJ/ZKEbVWKvnJhBlC4=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Oh, recorded presentations. Yeah that's different. Your scheme could work, =
it sure would be interesting to try out. Especially with code camps.

----- Original Message -----
From: Rich Morin <rdm@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 28 Jul 2024 12:23:43 -0700
Subject: Re: making YouTube (etc) videos more accessible?

> The screen reader (or whatever) wouldn't have to be "jabbering over the p=
resenter".  For example, the user could pause the video to examine and/or d=
iscuss a given slide.  If desired, the user could be alerted each time a ne=
w slide comes up (eg, by a short tone).
>
> One of the useful aspects of recorded presentations is the ability to pau=
se and review sections which "went by too fast".  I frequently do this myse=
lf, pausing the video to examine a slide of interest.
>
> -r
>
> > On Jul 28, 2024, at 12:02, 'Rob Hudson' via blinux-list@redhat.com <bli=
nux-list@redhat.com> wrote:
> >
> > You would have the screen reader jabbering over the presenter, so I'm n=
ot sure that would take off. Audio description is usually slotted between d=
ialog in tv shows and movies, so I'm not sure this approach would work for =
the type of content you are talking about.
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

