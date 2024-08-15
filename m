Return-Path: <blinux-list+bncBCV3N6GOXMCRBKNT7G2QMGQE3Z3TT7I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 31087953AFB
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 21:40:27 +0200 (CEST)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-26103a95b34sf1477244fac.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 12:40:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723750826; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVog+ohD7TrYqSZ19I5LwxMT3KHtoB5AZN3LLE+jiuX4CiEDECVxnrMIbLhOJ4WCIB
         HQwVEpJufhuVfmb7Xc0FaUdGWnY8qzHvBRWba+plVaQLPdQuWFi0hMl+kKgYqTr7jaoM
         z828ac3rOdSACOI839ZtQGi/yiCeqM9PDv7Vxj6PhyJTcXDVyKCkGeajdYWKH/qE7HjL
         uYilOe7vzcfXfJCl+azUxd0XzfO+VZMyvWyM2d+IatIh0/ldKkQPKP4vKBhuJ75zHMw1
         ASlUreDZyBYTPmiw4H0s+Z2cEcZE4QO0PzMjB8dEpA58BSpX2j9QhhjTb9kSAb7bfL56
         ubQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=4+2imhUviWAPhBmC5G3cSosttASSPkK5FszzbYZr1Fk=;
        fh=Md5SdypwCaf4T9nHTHUVIUjBJUpVvPaDeweP2CEBtJU=;
        b=Xz1Pw2WdODVNiyl2ZmfTOTngi5R+xZnTxSO/ull2i5+M0q/SlBB6Of7DItpMxymVrY
         Jq7ISi2gwkWXSl6GdVVgFRKiYT2jvGZjQDMuQ+ULxnFlP05KjsyFj4meY4FhAXqk5JS8
         S+QTIzbnTllV39PUCFu8H40zwrrTZ4FbCmle2ryUjY6F3lWaDOgJY6JXtyiajDX3gZ4l
         RdGtTVSxqKasyemDa6TZ4oeUdRB3ebiFCGEmFitszPKT9EPOpeJ3Cl7XgKaCI/iCBl1g
         fBIk7LzzQBHC59BL9sv9/Tt5vzBW4Pd6rKE9phqTaAzO7Rc38wEGC50Qqqc1gPGUz4w8
         078w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723750826; x=1724355626;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4+2imhUviWAPhBmC5G3cSosttASSPkK5FszzbYZr1Fk=;
        b=tXshgpuSAs51rHswNh4CzsiYtG1xl+7SlAubAiC4VaQfYhnmY36g/Eav0wdah30HEq
         wq+yjEGmES9P/afNBQm2rfmyNw0BMuyApKtEZIHsQr5ltuJBp2hRQoe9OFlY3IDQXzW7
         521VDUb4+Yf2Le0Siur1RANFlUfTbJH/MzPKuAVaXyceKZzwGGPMngiWTWwETglfGKxn
         bENCUFQfVUDhZSJfDUM6XACOpsczUYvzTWKpVovFMvNHraaYT7xySGoDw1UuOuo8bZb4
         Dyh8OYHdO5BIghDpa1wS7L/8fipKWGFPubDnK9rvnEhx6thf0WhJJsNLoxSdDcDK99DW
         0z9A==
X-Forwarded-Encrypted: i=2; AJvYcCVQ20uBvvuLhcSRd5MXPY3RRsc2mKf4DDzeuWVhG4qzDkFaAM6My/DMESfBh6uRpaOZUY9WlP2GDf4GwrieCVf9jrwFwmpl3IOC
X-Gm-Message-State: AOJu0YzaWoz0UOF8u12k6nRcEFx3uA18puAaiRQOXDZGs12AUM56ywGq
	kW3fX0kBBmUF+0tRHFQzRJwkLAePglUoNjuQExgD8TBWUCd8WCRoPMJ1GSrMVW4=
X-Google-Smtp-Source: AGHT+IFHR5Gj1lIKzishGqJz8Z0bkufUaB1kgjfGggoHXDXwnZU7W/VfCTJJPfRlgxmHOt3gDhCdww==
X-Received: by 2002:a05:6870:5587:b0:260:f495:5492 with SMTP id 586e51a60fabf-2701c52e0f3mr575457fac.39.1723750825760;
        Thu, 15 Aug 2024 12:40:25 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:d216:b0:254:6df2:bea5 with SMTP id
 586e51a60fabf-26ffeedccddls816779fac.0.-pod-prod-03-us; Thu, 15 Aug 2024
 12:40:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV1f5cruRFwqmRgQUDHr1Jmq44fytce5xIgVSXr5pRSvgLR2OR4wto5Hp3EnT2WLqSP+rCwaMIX/eXzFuNuJHaFg3ocRv3Pxz5d/kcX
X-Received: by 2002:a05:6358:b3d6:b0:1aa:b887:2386 with SMTP id e5c5f4694b2df-1b39319974bmr117402555d.10.1723750824724;
        Thu, 15 Aug 2024 12:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723750824; cv=none;
        d=google.com; s=arc-20160816;
        b=ZT8vVZnCqJXwpytNsUYkRjZGgdjdihqtCfWOgAiolY2HpotWdFIxwoI1Ieetecc+0l
         DPhcKTgqlvakqiIs58UAI0+VshlIeT9+25h0AoVphcDMEvz8XjbDBr6xJJ+4l8iyaDu+
         0RjfaFkPHg5436WaI146CFfYrG4wuQZq8lx7BcipT6dLO1DwhNfjL0bL/sI9KG40TFxr
         mXCgINriD9Nwl+bCpcJKyhIlopobm0LJQ0JA54Ao1pwx2dgbMkfpu2NZ81Z38lekfJHz
         4m06XOrb480m5zsXCZsIQRLeuSfBmxMi+UnFP87k+HR9Gyn8MOzZz3KbzAVV3++z39UX
         Z9jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=ycKhSd24Ta5znVX3ShfrZc2VlE7tzwZElLsX2a5t0bs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=1Dn7XBMOmm/oLw0OkYU7UzW7AM9bYKFDR4jeWa/XnDU6fZMj31fw8z+42rXEft+PLr
         4ehjpgEbH3LyMmxBc6JJpjaFl4chARLTuvhjmQYZELKZG+Ot3d+EJrjrfxXE+O74erO8
         Wz3MJAOC5ivr94L2qISiL+xFUZ1jje4YBquUdnsYYInKioyTePQUJszn0F1iOG3zhMvB
         qpcnveTnPE1JxBupvwLvdZHqNaDs2BzZ5ZoxU1rDGy/ReRs5kJuFO+s/uEYsYrTHXiDf
         QsNTELDDCMnRHeZmWyZddOnk57olRU0GqkYSqWd9+uOyqTsrdMH22BRn0YC2z5dF+54I
         1hOg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a003cecsi24240061cf.203.2024.08.15.12.40.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 12:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-300-5j1NVZEBNA24XB30YPb5pw-1; Thu,
 15 Aug 2024 15:40:21 -0400
X-MC-Unique: 5j1NVZEBNA24XB30YPb5pw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3FCB2185E863
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 19:40:16 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BF2C2301DC79; Thu, 15 Aug 2024 19:40:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9FF56301DC71
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:40:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C47AA192DE0A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:40:10 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-447-KUr8hDzJO2edgerdMX485A-1; Thu,
 15 Aug 2024 15:40:07 -0400
X-MC-Unique: KUr8hDzJO2edgerdMX485A-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N2mFY-1sB5AH3Vlc-014VyA for
 <blinux-list@redhat.com>; Thu, 15 Aug 2024 21:40:06 +0200
Message-ID: <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
Date: Thu, 15 Aug 2024 15:40:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus info
To: blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
X-Provags-ID: V03:K1:jgfBw+LYjA6beIUUz2isaWRefgZwPo2jJoHiUfnQmuc506ZcqWH
 J4XFgWJwSI8Mq6clJ5Wwd/4aIEkd0q5P613a92FVzgVDwOr7H78Hb9c6voecVB01si5dJ7L
 n8e+/MSOO94L5cqXSbHL5QSij8Sh0xvRiNH8qfwgHp01L1L2twXCCv/h3T772JmH/bs30nA
 iJIjcYWiUc/kunfRUY7Qw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Bdds+cMcqjg=;/mXNV1bAm8MropfSgFIETVw+7fM
 w9UVKMcmfGDlmxe78SZ0BApKLoNF/KtufB+clSTYuaC2H5NnQ+2ne8WsDRB/YctzaJPrqXPUQ
 /wPzHhZVVlx8JqOPeQOR/HlMNuQslytyWv+uRm5+2fMk+NFDDGNphUilTKSVnxDDhWBxtWJU6
 yWUjYHphIyVQ22B/Lg3VOpZfO9wH0hKDDi9mbXBJgvomnvgcTDqMxrxqbNHcZop3ihrK6mw9C
 c+0lMhh9Tfzv41IOTePJTSKCumN6O2eov9acxlZNNVZwFnTlYuv6N+lhIYsgcyaDDGmPZ2T53
 aSebhjGfi+8QyCEvbSLyoEpyII5b+r31HIRtE99+JEATOxLnWM/IpXofHfe+Icpkch82d3Trl
 c8MYUB1FaZ7tjyu5xiJoxeKr8Owcvj2aEbQDNHju3Jw2QIqAcHZJNZRIcLpE5511e/4ut6u4/
 cJtIlyYY2U2h/gZQTEmy/9c8mY+3L91azDT7PyliKm7vg2MlqRjpE16Ai8hocKxZ3cdTbXU5W
 bmFK2wctlanH+zmh3Iv2hyTJFberpp+RHR59DsoyVMaiHkK6vdnPmCKcA3uS2TvS8hPfr0EIt
 6e4Zy2BvqoeDKjImxVdxf+zVhpI0ZyQ8HCLdXi3Tu6vUVp438KkwMo/V26ij68BJNFB627HeJ
 GvHlWoxdW/PxhwgdKejMmvAi6tZwexkeL794o/dZD19GcDm1AkLtA3cCpANGj+1SP365nXJxW
 DKSv1uSc+TAG3JkHwFOMcJ1Icv8sPVqylSQNbUFvMaFhPiqXtkk5ajiGOhji31eemiP/Ssmii
 GvQCvGqnlSLtdqJVh0aPkrhw==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Type: multipart/alternative;
 boundary="------------wKwoKRRX6C2W0xw8gY13o8Nf"
Content-Language: en-US
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

This is a multi-part message in MIME format.
--------------wKwoKRRX6C2W0xw8gY13o8Nf
Content-Type: text/plain; charset="UTF-8"; format=flowed

Jude DaShiell ameadika:
> When things are not in normal places, I take a little time and go hunting.
> Sometimes I get lucky.


I don't find that all that encouraging, especially on a distro that says
right on the tin that beginners can use it. It should be just as easy to
install as it is to run. Seems neither Ubuntu-MATE, Fedora-MATE-Compiz
nor Solus-MATE make me hunt for their installers. But none of them are
running XFCE either. Maybe the easily accessible installer right out
front on the desktop is a MATE thing.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------wKwoKRRX6C2W0xw8gY13o8Nf
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Jude DaShiell ameadika:<br>
    </div>
    <blockquote type="cite"
      cite="mid:460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com">
      <pre>When things are not in normal places, I take a little time and go hunting.
Sometimes I get lucky.
</pre>
    </blockquote>
    <p><br>
    </p>
    <p>I don't find that all that encouraging, especially on a distro
      that says right on the tin that beginners can use it. It should be
      just as easy to install as it is to run. Seems neither
      Ubuntu-MATE, Fedora-MATE-Compiz nor Solus-MATE make me hunt for
      their installers. But none of them are running XFCE either. Maybe
      the easily accessible installer right out front on the desktop is
      a MATE thing.<br>
    </p>
    <p>~Kyle<br>
    </p>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------wKwoKRRX6C2W0xw8gY13o8Nf--

