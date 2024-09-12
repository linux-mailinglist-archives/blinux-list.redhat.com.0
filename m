Return-Path: <blinux-list+bncBD6J3OOK2IIBBBEJRG3QMGQECR4XCGA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id AC20C975E8A
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2024 03:31:50 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-45825ed5a19sf7985681cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 11 Sep 2024 18:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726104709; cv=pass;
        d=google.com; s=arc-20240605;
        b=foZmjL1aht3C8qMkTNISNMVUyS/fFIMDxsxMycq15zIseYPpeEevurkENM88qFTLiv
         tSOJ6EmIEfBzijcsr23mDvKOiZGMMv6TePGWGmls0rty+FjX8V4szCMLekjoLhNAoaYV
         hs821i2xvQg+3RTsZQjkpCYIgggnzdROmwTB6GmsjEN8sOH8Z4MbYLvqMTshVcxpCMVZ
         iBognt1y/mmBkvYNV1zlXLJVcrPHud/Th5tm4GIj4OX3KMk5TekMH4owrsmdHTC/8353
         YzO7nuKxecMwOZeTFjWQXNuCzvBguxTfGuTtSqhr8qCI77XDbZZb/L3QM5Vrk8Z3UWbo
         rb8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=kylGJaXBJoJwAvFOEbKdfhrxOZ7uHO7GpghuC1CZslw=;
        fh=mZPJNkqjj5vWivr+VS1HWmqUE9F4u9xtqhbBYXFiodo=;
        b=XqctLe33Uboz5/k/jEZTvSXucHq3XHGdpcZxDtt3+R2M8efmTLV60W2qWrBJnyxZh8
         10mt3Tw1+EfRTVOcJDpOS6USCiqkQVMlVmSFXMjPD8R9gI2TbO+/xdHNaw/3nvT6+r9U
         vHCx7H5dFX5q+XbiQCa+FtJubMP6pyDXEc6ZwbyK+xIs0lPTO2j75Lxicyp9M3mjVP2f
         IHrhOI8ssu+MtRNsNZNRwFPyeLQ+I0NE7bxOD9ZUioHiIGCjfFIQZ5FJd+qP+16atjnU
         dSXEG317ieSxtRkofjAbXkm0uiUte4wodxEnxVmbY3n95+avHj3aOwogBKl6YnEKUZcp
         wNHA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726104709; x=1726709509;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kylGJaXBJoJwAvFOEbKdfhrxOZ7uHO7GpghuC1CZslw=;
        b=bBC0UJGd8IwTcqADeprwl5k93oGjUtP6Mm9N/LYBCyBFZi/IG212xHKZwxBW3lF2i1
         zTHKEYW6S29svKzRfvGv8oNzN4NUyQ11ZWKy/wpLaljJHV/GVpxQPs+XEEhwqr9RVPdT
         BIvkH5mt8BadX/nxjR+qTEqVQdAYNdVVet8gn46PPMGD8j9+JrrFK/DESxF/9wP7fQms
         ocFWvhwmVxOch+7mq1sro+uz0zy0xXEBJArVZl5YRlAgimY8SLejxHlb66g2nErCLa6K
         zp+cFIoL9Xr5ApqQB7/v1xbPsaLQZ3dTH5G50fXwMl9k/gH3b7bLmv1Qunhv/m5MkjD5
         rmbQ==
X-Forwarded-Encrypted: i=2; AJvYcCWYMsWEwqbHTKx3hclz42U61ymx+IAbVOb4Rf36v+WMhmWPK1cYwHS8ANnuT72uKMFk3to1Yw==@lfdr.de
X-Gm-Message-State: AOJu0YwfHNt4PD1+S6xboY0Wj/kpSbx8ocFU/+CGx6T4YlarHdvgi9LE
	vJEfarsW5KuY0uBIVUhjIFkcaQfr8lL8j93MYmk+5bLz/gLqEV2xKmD7Do2Ky8Y=
X-Google-Smtp-Source: AGHT+IGxvjyW+yvkUkrAtMEwhC/MkpI447U7UaeKfZ2v/fHZ5T0/HyAMW/Exhqs4gLB3ZRPTGv4u5A==
X-Received: by 2002:a05:622a:4b09:b0:458:2aac:e502 with SMTP id d75a77b69052e-458602dd864mr21526991cf.23.1726104709217;
        Wed, 11 Sep 2024 18:31:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:598d:0:b0:458:355c:3632 with SMTP id d75a77b69052e-4585fadc173ls6632071cf.2.-pod-prod-04-us;
 Wed, 11 Sep 2024 18:31:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUDA9raeoJBfTv/4jnMOEgnCZx42F66LnHPhNsxJGqG3ndmuQhR+vf6q3PUPmwOI73/qNVrGoyjEPYAjg==@gapps.redhat.com
X-Received: by 2002:a05:620a:4513:b0:79d:5f82:a404 with SMTP id af79cd13be357-7a9e5fcc48emr215012685a.64.1726104708252;
        Wed, 11 Sep 2024 18:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726104708; cv=none;
        d=google.com; s=arc-20240605;
        b=kdlj79RrgzUvHlxGLgHEnYVBkdLjjBhIGza4dn9feIP8LU3I+aflxk9xqsxA5J50We
         tSQ3aK4AgNlFUbGbRelVu66864CQUCAD8skR20H5Uwd7fkRLTAko56Z/2wVBP8+TZgyq
         sD5rPZQndpZ4uG/l8wint/AEfxRRAfjOiNJwyEGpaOw8eUeqzzBXhnMmOMmupeI+MWIo
         AqT/ntyRDcAOqi4ys/nSs/vl0lI+oNIrl5SfaT0zZC1fBhFcfFwiPfEuF0rHzl9lj07j
         uH5R1EBMx2M1/fSViyk8KvzhwP3F4I/oA5frOCX4XDnrfQ79kIo5QLMQUh7HhLPldhyY
         MpVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=E8q65cNcPJqD+F9eYU2zwzTOo/R6551hnOLxyCsq9bQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HueEZmSKojcC8hMjloVwV1qZM079VTeadptbbveMwmPhkl/l7QhWeMwbsBhOl0sfzV
         al2JF1IypwWTlC7ofohWgiqpQT4fGpDN0D9imdxAoJpZYsZteHJq95uGJpLU/WIGxCDx
         KXW+jJ/O/le40FBc5PzR7t8KLunL4tlOMHP2LmGzwt08956Xtwgg4fE3rqAlNP7xjlsn
         auUe/WrMPl07we1ZTS/AM3u5xsgOhI/D1X1nZckh2ghtmvsd+vTm3J+LMSQD7EFvRJ3k
         9LOOpFBRZW/LgSIDV8hPwAZ5k0VWTsE5lViI0C05Fim+JhopgVhNWNDgszQDtGDXsmpc
         /DnA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a9a79c579dsi1192404585a.94.2024.09.11.18.31.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 18:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-29-wvKgwsIOOOyRWVM67u6lzw-1; Wed,
 11 Sep 2024 21:31:46 -0400
X-MC-Unique: wvKgwsIOOOyRWVM67u6lzw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2EA211955DC6
	for <blinux-list@gapps.redhat.com>; Thu, 12 Sep 2024 01:31:46 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 28DF9195609D; Thu, 12 Sep 2024 01:31:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 25F1D1956096
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:31:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 922481955D45
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:31:45 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-48-ER17UzqMMCGW6jhOx9johg-1; Wed,
 11 Sep 2024 21:31:43 -0400
X-MC-Unique: ER17UzqMMCGW6jhOx9johg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MfpSb-1sMOrU3nvV-00gJ9n for
 <blinux-list@redhat.com>; Thu, 12 Sep 2024 03:31:42 +0200
Message-ID: <20240912.013141.655.108@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: any chromebook users here running linux on chromebook?
Date: Wed, 11 Sep 2024 20:31:41 -0500
MIME-Version: 1.0
In-Reply-To: <19006e66-1bcd-196b-8e63-ece8a8c9246e@hubert-humphrey.com>
References: <55F61CEB-56FB-42DF-9225-1A94CF10141F@panix.com>
	<BBCE40EE-AA90-4F6C-9784-20BF9F6C09C2@gmail.com>
	<19006e66-1bcd-196b-8e63-ece8a8c9246e@hubert-humphrey.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:OcbUwTqFgesS+2NkO0nblP25qsI1fmTdK6kdxgPtEo65O1/sFco
 5WwJrfoKVwAwjwx3v8H+1JrFuETPOplCZKpTiOCN4BUNBqZIgkvDCVNFiObR61NEe70ZmqF
 obtmEKl+KxWSAtRRaSMWwZEL8crz1GdR3BKYQ5dhC5jlBJdOmXOqiXFs9NRVPrGVr66SpdV
 QVSX7sDCmDLQFR4uVvFPw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Qs2tm3y26oo=;cBaTwVVnwu3dld9jSXjmc/j6Hwm
 t3IkBddhhUKrsUx/nrHTHF1b9AsMfc84cNPjeilFIu+c6RtY7RCEijIX4BUiRtD35A6DhsW1I
 1blq4zZ/8wfVHD0jqyS08fCn/jBaaAV9ce2fQYr0UtNKP6WRH3pVvvi+3isKhbkNLese0wvTS
 8Qy9NlH9xm2T0KD6BO72Og6HB8JcJKp+r2t7aOPxEWawlBDMZHFi6TXsBMuMpmWrZKtVU2F1u
 gwEo0jeLiM6+IJH9L1xsRzCYNbhi6Kqpg9H9y6/4kEGUrUyNlonjQr+KeB/gOrhP2fotygUWP
 Sxu8WOAxs2/kuxrcZ2XwUx1SxuoHigm97Xhc8jNqZjUyYeIu5cGj7ex0pRbs4CCMoSzHeZCQD
 VGjXR54vTePZ899FTSW6Y60kx+tYWrz9263TKP+E4xrzKMhVH9G+WeQtwjRBIRvI0rhwoqXb7
 K0ErcL8+n9vjWWNl3NG4IQ21FGaAoZP8SNmsVF6P1nchW3hKIuYZTEQ8Jq7ZdW9vKsk3nWbr7
 9Kf+uc4qrLhrF1bMmfdARWBRrOcd08PLAVzxb4i7tdOLcWWkTvfrfCiOcWizwewhfCzwAXcvD
 CTlWoSlX8MvwRymhY1HtFXia7vvdTuYyQCwzgpfkY4ZfSgnIwmIC/2JK13XzwKWqNpbU0AXQr
 ggfvfSMlK6wHW3oPilL6DAEuDWN6E+bQyGykMkvUQNVDpCHQgbkE1SBdoWKwbnRQrElI0PlbV
 v9PllRswrdqu5skZVDHECbnP+3f9MPI8tmL/hZLQNyU1Chstao8ANl/xs6V5peup1QVOUGw4/
 12MwC6uNWovjKZvN5nWx4xvbmPmpSyjzc54rCaNyV2G3A=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
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

Try
apt-get install python-pyte

----- Original Message -----
From: Chime Hart <chime@hubert-humphrey.com>
To: Ryan Mann <rmann0581@gmail.com>
Cc: Jude DaShiell <jdashiel@panix.com>, Devin Prater <r.d.t.prater@gmail.com>,     blinux-list@redhat.com
Date: Wed, 11 Sep 2024 18:26:09 -0700 (PDT)
Subject: Re: any chromebook users here running linux on chromebook?

> Well Ryan-and-all, that command is
> git clone https://github.com/tspivey/tdsr.git
> But still my questions are what are the differences among TDSR from Speakup or
> Fenrir? When I run "tdsr" it says it needs "pyte" Well pipx cannot find it,
> aptitude says there are over 200 packages, too many to show. Wish I could get
> that limit lifted.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

