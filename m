Return-Path: <blinux-list+bncBD6J3OOK2IIBBWN6SS5AMGQEWBYUTTY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 169AE9D8FAB
	for <lists+blinux-list@lfdr.de>; Tue, 26 Nov 2024 02:07:39 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6708a8b27sf185703885a.0
        for <lists+blinux-list@lfdr.de>; Mon, 25 Nov 2024 17:07:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732583258; cv=pass;
        d=google.com; s=arc-20240605;
        b=KA+X2bKAllDs9ZwgbihTt1qMmeH4k9NL0/NzkUrjigFQ4qt5lrQURhIrbjz2tgNd+n
         ZsCLhAr0dxK2DU6wIA/ONHKgCM/J8lNIKON4+f2bEtD3R8ozgHg3/RHhQjk6+X6QErq4
         whIZbXLrljHjXNXUgUzZ+JzQ5AxU+rtVjdgzkKPaOviOGINsYknPPVVD5unXVSN9dID9
         n4qJ8xH7sI3jr1l3WBwX6j0O9dQQzrOK4GGcDWEIn/zd6fb50hCkxSNbmt/7hEu6zt1f
         qUImHKwQsOBMEV+ToB0NYrvrhO5M7E8rs7pmS+jsi29Sdj18C8yUA5lLWR5f+w3AtQr/
         RWDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=HIjy7OG1/Gn+zTc6iiZlsz1ybX8CLgODORZ77v2hIfA=;
        fh=3absH/YYmYX3F0QAvCpZpewB6walC77yVU5rnyr1TtQ=;
        b=GAxG37XZEXgw7E5FWpKSdonV1YaREQ1sLcOySmWWYxJY88Gi9fveSgd3ReShcpS5z2
         XaIb0z6wwLZBFq0lOVO6C100WY30Vf6ziroTDVbCxV0j+5RcA8zuFIENF5Yh+s1fNKoV
         OX/X7QcuzvPRc0dnrcxrJZodJvUlnklgfiFN+u5SfHG74YW7d321PN4LojB4hbToBgps
         H8fKGASsC/9/kzUig9woN7R1EeDnW8e4VMGrbaoo/y7CVbCKTn53W/5xrkiAny2hCPWI
         zUSQWPJzvD7lUE/J0c+4FABjLGN1f5fdsWaxfMD/cryguAEBF/E5TP1PRA/UkkGlNPLE
         Un1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732583258; x=1733188058;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HIjy7OG1/Gn+zTc6iiZlsz1ybX8CLgODORZ77v2hIfA=;
        b=xGD+mQ9+Ha/v7NjT0ehQZiOt/RKatH2Q6FPNTYJRSx3BBckdXLXe7oSfuaMgnji0MZ
         Mve7IuoRZQ70YSqh1S6R7oh71bg8zmJui1yptfCq16UEnCT2oOLgDjVgOvEGooH8Eeo8
         JuWlk9afkhKh/mIDYJcasajDTORjrbVU4buUxaFKGJDooHPacEnV4aPUlG816ijyaUlR
         gjcv1dRPchrKC9TTRBU0ieggnyayvjW5MMnugo1AN8BxjnJ1fG+Dj5UkHCLX1bmmGpji
         5yfc9XdmWSJlALvY4zJYFy7I1QJ6mEhT8HXKQYrqQONZxD+orqYZCwZe/giOPZ0GuO5y
         G1Jw==
X-Forwarded-Encrypted: i=2; AJvYcCUYvytCkUH2rTeRF8gVfT/bA7cdlqsjTwIuG/bURK18Mm/CpunhR7143OaofoKUYr+ShKPZ3g==@lfdr.de
X-Gm-Message-State: AOJu0YyYDaVb/YK/WtM3uf/DCOOyLYbls/2zxBCrwbF0a4FXKPIGvsiK
	FFfFmx2hECGSR35xnS/J4a3DyM4AXiz2FG36l2QwCWKO+mVPiAdVmsvnGaVBkq0=
X-Google-Smtp-Source: AGHT+IGdrtUw8fjfRUAce7Nqo6sbB7TiHIHY65zO3Lj7QBt4Mz/MATdQ9URZZPkRP+LqtaSYcEnbmg==
X-Received: by 2002:a05:622a:5a11:b0:45d:7416:1636 with SMTP id d75a77b69052e-466a330b008mr30739661cf.2.1732583257809;
        Mon, 25 Nov 2024 17:07:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:770f:b0:466:9db4:d6e4 with SMTP id
 d75a77b69052e-4669db4da46ls11654171cf.1.-pod-prod-00-us; Mon, 25 Nov 2024
 17:07:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVxqVtTGiqwVHQfd/Zr7ONV9vAz3bTghiWteRdkF034b7nGS3ZMs/Ow+pb9MY8lgtK86AEmkxvhkZfk5A==@gapps.redhat.com
X-Received: by 2002:a05:622a:1b8c:b0:461:20b2:ba00 with SMTP id d75a77b69052e-466a3bb9321mr30051051cf.18.1732583256630;
        Mon, 25 Nov 2024 17:07:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732583256; cv=none;
        d=google.com; s=arc-20240605;
        b=MjqwuoYzjSikbM1bqLUF+FJxIgZ73VnVI3xGzxLKoVHcwlqkU05/M0DtydMtk5+GZ8
         clTDoWAbbieOkf5XhXo/vYvBEQN5ifyXDYUs7kbn7Xvn9KArh4hUTctbMwd031O68Vfv
         +jIEZtsMQZmCK7X6gsgQq37oRd5ADxrz0kBNw9S7VRY+X65w97Zmqy+O8MQ9JVfiTWHi
         cfKD5nuMOflMJrSq7X71bF0dBFF1uo9/6Boph8VxK/1+2yX9LhwXbUyiCS+OS70rEm2/
         FMmrCIZtvYhbSiwVp+4FmLliWqEsaO+mlq6UlfJW2AtRxSLrXK9ICFN83GYf6eX1n0np
         BnHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=tYs2TWWCyyaGg3IlsuUL3jAbJjovqnuZcyEzQpNphtQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Ucxw/OJC5pgW6bxCyZwie1l/y/i1CpC2nm1hSH5mwtrMP6/9CDOJmkduj53JBCbDQO
         e7sLMZuQEKwXICxKjfrxJFoXOi9R1FA74frcwTfV9k3jE4s4m2vZIwmmGQ0Gm14GSazu
         zpOly7bYZk8xvWd+/CFUmY+vxaZEenLCBl5dWQfz5Y8vMajQFU2MQiHR7mit2r8U0/OX
         ugEK82/rnn14TRROsZcKnDo7s5FfIiF+exOem304AYiLQd2tfr+IN0bbg3d/bCPrXxvF
         m4ECgJB6FKqcYxEG+dd3aOG7+sAOfo4XFQRqox2On7EAA9aK53EqUsCQt2gEFG2GMtxo
         wk3Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4666fe01507si91397241cf.278.2024.11.25.17.07.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 17:07:36 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-486-4RDDd8MJMGGLWtbV4nJG1A-1; Mon,
 25 Nov 2024 20:07:35 -0500
X-MC-Unique: 4RDDd8MJMGGLWtbV4nJG1A-1
X-Mimecast-MFC-AGG-ID: 4RDDd8MJMGGLWtbV4nJG1A
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9676919560B0
	for <blinux-list@gapps.redhat.com>; Tue, 26 Nov 2024 01:07:34 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 91DF21955F43; Tue, 26 Nov 2024 01:07:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8F21C1956052
	for <blinux-list@redhat.com>; Tue, 26 Nov 2024 01:07:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 02F1B1956080
	for <blinux-list@redhat.com>; Tue, 26 Nov 2024 01:07:34 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-392-Yik1Wc4NMfO_GwA5tB4V1Q-1; Mon,
 25 Nov 2024 20:07:31 -0500
X-MC-Unique: Yik1Wc4NMfO_GwA5tB4V1Q-1
X-Mimecast-MFC-AGG-ID: Yik1Wc4NMfO_GwA5tB4V1Q
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [0.0.0.0] ([208.107.97.40]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N79uI-1tlqkJ3xXg-00xf35 for
 <blinux-list@redhat.com>; Tue, 26 Nov 2024 02:02:28 +0100
Message-ID: <20241126.010207.597.15@[0.0.0.0]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Troubleshooting audio.
Date: Mon, 25 Nov 2024 19:02:07 -0600
MIME-Version: 1.0
In-Reply-To: <CAO2sX335=vGsN2ie0GKShfs_gO+Zk1WDH8HNmQY8vpsQ5Rdwww@mail.gmail.com>
References: <CAO2sX335=vGsN2ie0GKShfs_gO+Zk1WDH8HNmQY8vpsQ5Rdwww@mail.gmail.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:ngQ5svuajfd3j7OPUnvVzja0lAHAiMSOnw1KiP0vPMCpq0OEJKu
 en/mNGpks4ICqBI+QENDP3Xuvpb/N2LOCI7SolG0EsMlAGKFIfoNDM3GiLQ2F3UiMc+AhnB
 22MwA7FmaAokcMoIV5LoevlW81779mqiMyAg2XEWeQnDlEdUNltvpVbTPJPjRJcSKD1CwP2
 JT0awTSFJWa8qdwiZd7NQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Y0UqnoHnk9g=;JSQQC6Oar/FVvo6i05BieCionB8
 zOa7auAMgV7+GCp3EVyOfy+QjJ8QG2Z56HybwKuhY9BViGDbsAcYsSVOdB1liEh0uR0S3n0iV
 5vo0fuh1BmSAyaIyMnhSQatLT99SrXHa4wbM9GTvVFlxY4hoV+szxiClKNQrphZIWUedaG1lZ
 rg4F4UdQqpJA09sVItEml1ePQyGLG/QC0OV7/E9tOt6oe4UDO5uHT4TKMlduuxdU4fYOnFDDc
 AwyNhjlDvKLVi/3RAN6cbPK/hPuIQ36ba0fnivNwvHauxIt/fEfh4QTRJZVP03q9nd5wZEfGu
 QYmH++xNGNsmkDwRQnSJWHBxMsAQekMlbKiVwOfPkleGtoaekFwVoqYIfdDObd5b/VlsWhDfR
 M+AC7vqjR5X0gKYyYewgd0Te8t4Dlxl/FkLvKJKZGrtjCCmy4ivzafUCh51/FQzFc7r5I/tgL
 U/l8AjPUr3x3Blz1peroGvBPrTeZ6JFzgp006dmn5aQJigXOB2TJ91IBGgbfPkPPVnnxdwt2O
 /G5pF92UFGHaiVxj+jYf6yIWZIpvnHeHFDttqNblCH4fnybgAGVu1XLz8O4omLQGsUldl4AB5
 g9o19oS6a8ZRTO9SaX0gUwwSflAPBxNbnSWDUec4EuY9+4UWAJ+hwyfzFMCrrEyidYItqrae6
 VtEZNGyozMosKBhp+zD+bYiy/cYf+9HQ4cPMJ06s31z3WQCRY1Pu8N3DmXE6GhFfp0D3fXcYZ
 ux3CkM1OpHhxtYTP8+zpR6LyRQg+0pMjd22vE8jTUOa2YsGwIliIE1aey7qPMb5MfN88x5HAy
 CMxwO4DpKP04u3s4oHQchfSdfwviXpD5zkp1RXsTEbxw4qmFwHAjC/Q964DyOyBkhpJL71V+L
 erhun+e2TSKymzTBTaZne0NgA6gl57CWxn7WMtZwe8X4/vDKJlE4O/7SewrrEAgVXK7nWWuH6
 HP2MHdKAKgolu/2aGsKAQKKF53HskggEiRK4wgds2LLz05wfjI83/CN6oo186b7TLycMD3F2y
 cnKBYTSkwQKiItnxoinwqNN1ihy06wFOhbR0CMcnq3J7gfK7U1k4mlgFCxw2KRT/eeuXd5Esn
 HCx4hXV5LtPw9v0s4fC+i/qR00xr7L
X-Mimecast-MFC-PROC-ID: 2I4593Kc3UPT-DGIO9takyUrt-FJhWg20aVerlZ9T2A_1732583250
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dyy1Sra-5dXic-kR0id75v59cmqUlnjuH0WiKyBkxrM_1732583254
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted
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

Make sure you have the proper profile set in pavucontrol. If it's looking for surround 5.1, for example, you're going ot get empty audio. Set it to 2.1 analog stereo output.

----- Original Message -----
From: Jeffery Mewtamer <mewtamer@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Tue, 26 Nov 2024 00:37:20 +0000
Subject: Troubleshooting audio.

> Okay, so I'm running Debian Testing and a few days ago, the audio from my
> desktops front 3.5mm audiojack just died for apparently no reason.
>
> Fortunately, I have a USB sound adapter that just worked when I plugged it
> in, so I didn't have to resort to a clean install to get Orca and espeakup
> speaking again, but while this works, it isn't ideal as:
>
> -The adaptor is a rather bulky dongle, the kind that would block adjacent
> USB ports if the ports on the front of my desktop weren't spaced out to
> accomodate such things, the kind where one is fearful an accident is going
> to lead to the dongle's connecter snapping off in the port.
> -The adaptor is louder than my on-board audio(using alsamixer's master
> volume, 30% from the adaptor is about 40% from the on board, 20% from the
> adaptor is maybe 25% from the on-board. This wouldn't be a problem on its
> own, but whereas the on-board, when it's working, lets me go down to 1% and
> only mutes at 0%, the adaptor mutes if I go below 18% and the 1% from the
> adaptor is louder than the 20% I often keep alsamixer at when usingthe
> on-board audio. Not uncomfortably loud, but still louder than I would
> prefer.
>
> Plugging and unpluging my earphones from the adapter's earphone jack is
> harder than doing so from the on-board jack... Plus, I frequently make the
> mistake of plugging into the on-board instead of the adapter.
>
> I suspect I could fix the issue by reinstalling Debian, but with how much
> I've altered my setup from a default Debian Testing with Speech and LXDE
> installation, and not knowing which, if any, of those alterations caused
> the problem(though I'm not aware of any changes I made right before the
> on-board cut out that would affect sound), I would rather fix it in my
> existing system than do a clean install.
>
> If it matters, best I can tell, selecting LXDE as desktop in Debian
> Testing's netinst defaults to pulseaudio as sound system and the only
> change I've made to pulse beyond keeping packages uptodate via aptitude was
> running scripts provided by Fenrir that make Orca and espeakup play nice,
> but that was weeks, if not months ago. And if It matters, I'm running AMD64
> kernel version 6.11.9, though I was running 6.11.7 when the problem started.
>
> Any help anyone can provide would be much appreciated.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

