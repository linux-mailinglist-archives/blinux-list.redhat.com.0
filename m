Return-Path: <blinux-list+bncBDYPVTOXSQEBBKFXTGVAMGQEEZOTRBQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 542607E0FF8
	for <lists+blinux-list@lfdr.de>; Sat,  4 Nov 2023 15:56:41 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cc9224395sf30661051cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 04 Nov 2023 07:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699109800; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQxEPUVF9+j94EjT91vsl7Nf+5AR8llOAUYPUZi9IBaDrR0O6KPIebwnLTvxMISi6/
         LyJnRXBU5pC3yvHkfCEyOVJ5sdufYcn838jnrpaHNMaVu/201HyvfFuIs3Ec4D9QToxy
         aN8INSWjssSuTYrZmnPa2FVl5YB/9A5Y4BrS5o8YJCb5qE5YBAEBCfYMZBUzJ9N/vVTo
         KVs5eXUQbzzQNhoAIIsxwlFT7NnzCM87VoiP1dFN4+m5slFrJ9jwk//gtA80eIYgHdQ8
         z2h2TGJsZyTnzLm4cKjoSiNeY5Wu8Z0+csharTh5slyBsFVjzN2ygtu3nHaKHX0Re+/J
         t01w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=jb4mlScfYeEF+jGmOcfo0GKltWPJ846Afk9kK7c1FT8=;
        fh=+yZQLoL+cnacxeL2FwmVaUzeiDl5iQWuXdQF6l72Pgs=;
        b=XNK4VpqZrCOVBxGllTmFtF8CCO/U/Vckece7fOMcYLFUmtSSuoTFUbtYvQzXvVc/CD
         AlHm0aNW0C2E6tbR0uCod42K9fBX7eD6u0D8cF3fEpKEt1111unBzdwH+67SJbMnQ+Lb
         pvgtVZYa7YmlpsRnQIR3CrtMebb0NSoaryqYQpycRm43AbtRv4X3gcbV8BKnTVllhwwd
         kpT9OEMBQ/btU3dtw+jlU8vtH1rBufDkWeXL7KWkkcSRJu9KfGhwx2ztw9nnNt7c6qPc
         4DxALKdAm/i6ng3IaamX/6eh+oklOWtlf1gHRkbexnZHPZ9JWfM8zLrfYwe3+U4DbaMD
         2EJA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699109800; x=1699714600;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jb4mlScfYeEF+jGmOcfo0GKltWPJ846Afk9kK7c1FT8=;
        b=fN57FILuAcSWgRtb+Hbl3OjY0rOMVurqK8eBg3r2XNN3w4XB2MB/arQHuUqsHFous4
         NTTXcEnaoNfaSZLrMs0zVotMRQ3RCvM4j4EJ3puUhMGspz+XDt2r0R/0CGGzNKqIkmBL
         glSB80UQeELzbeFEaJQnJEw2JpNBszbzdYXkGrqm8qUal/OUoqxRAhaSwYBKjFiP6FWP
         E/qUVedUySjBwWkurm5pXNk6y3FDWdMaFK9qX2uZfUhPTRQhM++BO/XPZWubmC/CIvG+
         prR8m0eeDu/RND6P5gzGORaUMDS/+qSwExgTsgkg5WyOk9h7I0WFRo0MoIkuZeQVIJRx
         qnTg==
X-Gm-Message-State: AOJu0YzpDW0gVlcP445li0uchVDTEYZzMHWfMI77xg63iiRiD8FDRsRW
	JMRS2CIOHouogR4qukpH6UB9Hw==
X-Google-Smtp-Source: AGHT+IFCBvz20U0JqBf8h2EiD9RGRVpiKsMNDFV11KjS5rzzm03LUydpqjSVBtdYHzwJI+br5tyQgQ==
X-Received: by 2002:ac8:7f83:0:b0:419:573c:59a3 with SMTP id z3-20020ac87f83000000b00419573c59a3mr31565815qtj.19.1699109800294;
        Sat, 04 Nov 2023 07:56:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5fc4:0:b0:41c:ca7a:2556 with SMTP id k4-20020ac85fc4000000b0041cca7a2556ls222452qta.2.-pod-prod-04-us;
 Sat, 04 Nov 2023 07:56:39 -0700 (PDT)
X-Received: by 2002:a05:620a:bce:b0:76f:10ab:7c68 with SMTP id s14-20020a05620a0bce00b0076f10ab7c68mr29227516qki.40.1699109799450;
        Sat, 04 Nov 2023 07:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699109799; cv=none;
        d=google.com; s=arc-20160816;
        b=xKI+gUHs3t8gE29jGaoO2ccpnGcrNeTxI4tlVb3YtFSAPBSZ886AWsZUWlcQwjp9Oh
         /zltTDjIifxcOc3lRmBckL4D2MtTaZ0KMn7MxoGxId/NvLIYOYlXJ3ELXBu0D6P2PDry
         NVYvQpnGNza1yhVyDXXESt05tfiokPf9whs3VsDAfu7F1agFyROiMGZPdVzHwIKhxxez
         /cq47lVddIPO5tD4o6cMaTh4cWrS9dG64ilTL6M5FvLcIKbHyVO3sUtGhx1WqK971Al7
         eCHz1d8I/FoNVBNJmvJ1Y1YuB3HyI88gpKTFDV7X6Isq4k/8D47qodPEE38+u5nkLK5G
         2QPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=Kd2z8FXlb3VvxlOsHy9gWChosWqktkKuxw1nD7XpIXU=;
        fh=+yZQLoL+cnacxeL2FwmVaUzeiDl5iQWuXdQF6l72Pgs=;
        b=nZns+UMBF1CxQE1EThhwczsT1n+MiudHZZwnzgUGEmZ3QKm0XxrP84pA9qf8GxHNeM
         zCOwKX0770Vajrzisw1Pi4J4kCYSdmpt/N1hEZgTbbcv/xkmmFNOurNcFll2a2m94Ia8
         wm2pcULrGRYqnHlHuSUJ7opJ3fbyJadJdTmKib/pX7Sh5OzGV5c4adbhafO0cxkKVTh5
         VKEO/CXwOXJJl4nvFzYc1SXgUYq/58nYZv+XUyVcKc4FXV5nkqgekac9eiK7HKIYCn5V
         gJqx1IqQbfK47DiU7rIkuqYbOIAHn9iS8iGHbIitGKWCB4xscqLVPueZD/wIf//I211X
         /2VA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id s12-20020a05620a254c00b00773d3c0bcdbsi3320465qko.427.2023.11.04.07.56.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 07:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-530-H3MlHGm8N7S4O16DzxfzEg-1; Sat,
 04 Nov 2023 10:56:37 -0400
X-MC-Unique: H3MlHGm8N7S4O16DzxfzEg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 981161C04B4C
	for <blinux-list@gapps.redhat.com>; Sat,  4 Nov 2023 14:56:37 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 94B991121309; Sat,  4 Nov 2023 14:56:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C4CA1121308
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 14:56:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5EA1229AA396
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 14:56:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-171-Zxz127OtPM6I18-i3DoUhw-1; Sat,
 04 Nov 2023 10:56:35 -0400
X-MC-Unique: Zxz127OtPM6I18-i3DoUhw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SN10M2m57z4NVn;
	Sat,  4 Nov 2023 10:56:35 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SN10M2bJVzcbc; Sat,  4 Nov 2023 10:56:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SN10M2X1dzcbC;
	Sat,  4 Nov 2023 10:56:35 -0400 (EDT)
Date: Sat, 4 Nov 2023 10:56:35 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>, 
    blinux-list@redhat.com
Subject: Re: How to setup Audacity Arch Linux
In-Reply-To: <fd258794-2bcb-4287-8278-cb74b583f683@gmail.com>
Message-ID: <60d99123-b96f-5957-6dbe-a2bf6b9b28d6@panix.com>
References: <fd258794-2bcb-4287-8278-cb74b583f683@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

Getting archlinux talking when it picks the wrong sound card:
kernel parameter video=3DHDMI-A-1:d

or whatever the connector is called

https://wiki.archlinux.org/title/kernel_mode_setting#Forcing_modes


--=20
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

On Sat, 4 Nov 2023, Pavel Vl=C4=8Dek wrote:

> Hi,
> I am unable to correctly setup Audacity. Arch Linux, Pipewire.
>
> In preferences, first combobox with label guest computer is set to alsa, =
and
> can be chandeg to jack audio connection kit. Second combo box is set as
> Pipewire, I think it is for playing, can be changed to default or hdmi. T=
hirt
> I think for recording is set to pipewire and can be changed to default an=
d
> alsa. What am I doing wrong? When I use gnome-sound-recorder for mic
> verification, all works as expected. I tried to switch to jack audio
> connection kit, I choosed my hdmi to play and my family controller (inter=
nal
> mic), but after recording, I get information about sound loss in selected
> regions.
>
> Thanks,
> Pavel
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

