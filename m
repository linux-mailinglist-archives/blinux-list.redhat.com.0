Return-Path: <blinux-list+bncBDYPVTOXSQEBBNNURW2AMGQENO2EZPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B4491ECC2
	for <lists+blinux-list@lfdr.de>; Tue,  2 Jul 2024 03:39:03 +0200 (CEST)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-64adaf9ec5dsf47292567b3.0
        for <lists+blinux-list@lfdr.de>; Mon, 01 Jul 2024 18:39:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719884342; cv=pass;
        d=google.com; s=arc-20160816;
        b=jxYBFkSp6esjhaYzk0Xlxzl50M9katcLMwwgm2XL2hyVSWZciQljoQP74pQQn/Evqz
         ZWthd2SGNrNljU2sl1nLK23G1suUL6ztBRElXeSThW+FaE4NVA00JYWH3MX/itF0NnBM
         E1wm97TuQRgyLItN4nyc2cj93FP00K8FeqS00VkzskafPLOdVMYp8WiVWpLIQxQG9NG7
         H/4bFOBw0QGyRkO7SoFj/nxSCbOhQH6ac4KQa1s5KBO3vazRPI1fd38yOAuAlHRRX/zq
         iLbX93avzlUr0kgRqxhYOCDD9Vv8G78bxFN3GnZrOUrt7WJpSYy20IUWrNgwbZ2X4EiC
         4e1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=tldrLTMYhQ2UFGGSlaBQxlOZHYCVBaLXmdZDIsQrkzk=;
        fh=JtxCRq02hsAmvBbWDqnw/6ovSwmSKf+A/d2i8JNMzvs=;
        b=KX2aKkj33voALkZ8IOgfPxfwdwpqzkR5Y5jbCNhVLD9dFfG4Fx+oggpD1gvz+BozDJ
         Fc9cL0vCSwhniHw/G9p70gsxiGFUACT6YjyprPtRdQ17FemPq53IX/0adVFRcAdQ4uQo
         Pljwt7SyHsUA9KW6ttVZfdjeK2vRaRavLq97nRW2QfFBwNNSn7ojwPX+xjCdZw478Gpu
         Xqv+fEpUVSGClSkn1ewT7LqtzfwI0l+xd/NyqJxHaefHz2k3bbb2opuMBsCkJGFjSSs5
         UvVeulD/tExaKod1s9JW7CQ8AivB5LkmDS7j0i3ruRHtuaODWOgyzYEDNudgz4KraKSx
         tpfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719884342; x=1720489142;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tldrLTMYhQ2UFGGSlaBQxlOZHYCVBaLXmdZDIsQrkzk=;
        b=slzGRMEsT+NSZMcZcYAq5OYuXMCaLav0SEtR0M94BxeLA2AHFYFqgJUSkNnEOD1Jw1
         PLD4Par/hwjvZLf1pFFr0kKntM0jBnbBsCq4pYMXd0HTWHAPFjXOMbUfnBG7f/5xJlFW
         npgJSHgmimgIPsjUoLnStmqg54aGS0pS3/SLkFdau2Wnq09eVovP/qSdlF69eke7Ovwb
         oXTixQdYtV31d5GZxwbUQXZJ94SR+73KWKoaylwOBinwSYs/IyU/uXpAlKK/XDUczdM0
         9imKOAMZTFPJmP0ZqVDffdj0uk464hc2ph+Jctb4SHQ8bIWby8dCt5iM7T75q2y9gPsQ
         GmRw==
X-Forwarded-Encrypted: i=2; AJvYcCXYvu1C0dgP8q6RWAQIMx70d69dW4BKYBK0ILuoFNrT3O0Q7IaPLcLt115APvm9V1L7G8Lui+7VK8spCe+lMzfBhaYbMvlWfypO
X-Gm-Message-State: AOJu0Yyu9KlGGj1mp/ghAIjAkoF7Ekb/UgaxIQcxMx3y1KHSg06iAF61
	6jd760n3AzuGn2fak12bmlJJ3R/10Ip9ltJtu6Upp6//Ju/xTOJwCEJrExVYDkE=
X-Google-Smtp-Source: AGHT+IHBjU3D7PKT5djsflBfpJ6xRgTmWZEc5EBMIIWhWnC4gxCMQ5u5EMPqGL7wGUpM/4ZWO9wGHg==
X-Received: by 2002:a05:690c:827:b0:62f:67b4:790c with SMTP id 00721157ae682-64c7170ecc6mr60763647b3.14.1719884342028;
        Mon, 01 Jul 2024 18:39:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:205:b0:440:29:dfd9 with SMTP id d75a77b69052e-44652b2abd0ls54413531cf.2.-pod-prod-03-us;
 Mon, 01 Jul 2024 18:39:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV5SEW9reKI2s/kqd69ru1gT/pOR1xesVbV2mOpyDPhhb2LD6lD0Tgz2PF0Usuypw33UziFvGXehzDJmDKblKwupC46qKr/zTD3NYS6
X-Received: by 2002:ae9:e64d:0:b0:79d:78c2:1bfd with SMTP id af79cd13be357-79d7ba8bc8emr822106485a.63.1719884340961;
        Mon, 01 Jul 2024 18:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719884340; cv=none;
        d=google.com; s=arc-20160816;
        b=PwRz/cbgYoxsIDkSiF4d6BnhqJhcdudEAE9HIQPXa1NCuRBtFvDmtEgdXZZD7wvHBk
         znTzkJm872nh64XnGt9Vxt+wY8Uing4f8T0J0IBKfx5eCy8aMv40/sAX8EpKFAN3ftOI
         UrlP6N+Jfx49ptyHSRm340LYJ0uXsC/aACl6kxWbAeqw/3t3taFHtCFSvhAMyosz2fdK
         FBDYnLQv1cOO/+QyJvsBxe6s30Yo6jHAi6hA6+N1Cxajme4yY0lUUi4Qt4JxfTR2ceTN
         cBkL/A2/zlJE8BWSsJO0exSo5pMu5FkfTj3nVLcSFnmC/ocvlIyJH9VXd+41RXKP3JiR
         et6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=cbBkksREOJh6cjaTsVExTEKAH0oneRI1Py12uUKURjM=;
        fh=oS6EXIHN5tKg4eWRzM5ctkFMITCs5o85+O7VkEhsn/k=;
        b=BtROmjE2yFF8a3zzXNSzVfnme+jTcmVmQqpcnmCehHrlKIH8E6Vb0SiQnymDXSfxwR
         8HZJNDBLLYg51nFDt8scMwNa8mSI+23Lbu9iqrTwVQ6uaqbvj0/V+BcqOoVSFoF03reL
         pUyewqr+gCSqjA9STW4TegOrHG2uz3yKOao2K0cNV407+0hzaOfpGueMEG7Tkcm3xK1b
         JnflnOXEooUGHUUcpyWdOz8wCh5+ftidvCW74JkhWGAmP8yvPANRWJaMW0DaCqW5NzgD
         pUuGWTMFzvKgVkAXbHaQp55sp8JzTxDUZzr/79e6VAo6WWbrDhuP9AVMTOzMQbTkgBjB
         zm0Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-79d69308a7bsi889563785a.516.2024.07.01.18.39.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 18:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-361-j1h1wNz6MsWN5NkmJo1PoQ-1; Mon,
 01 Jul 2024 21:38:59 -0400
X-MC-Unique: j1h1wNz6MsWN5NkmJo1PoQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A3F1A195608B
	for <blinux-list@gapps.redhat.com>; Tue,  2 Jul 2024 01:38:58 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9482519373E3; Tue,  2 Jul 2024 01:38:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 909CB1955E91
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 01:38:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CF448195609D
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 01:38:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-104-CFaditnhP5yvKn0NebEqiw-1; Mon,
 01 Jul 2024 21:38:55 -0400
X-MC-Unique: CFaditnhP5yvKn0NebEqiw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WCltl11lcz4Dmd;
	Mon,  1 Jul 2024 21:38:55 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WCltl0tS0zcbc; Mon,  1 Jul 2024 21:38:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WCltl0szMzcbC;
	Mon,  1 Jul 2024 21:38:55 -0400 (EDT)
Date: Mon, 1 Jul 2024 21:38:55 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
Subject: Re: Fedora 40 workstation status
In-Reply-To: <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net>
Message-ID: <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com>
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com> <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
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

It was whatever Fedora 40 workstation put on it by default.  I cleaned the
computer and got jenux running on it now with espeakup.
It was difficult for a sighted user to sign onto the local wi-fi network
but not impossible.
If you need to install in a wi-fi network I recommend Jenux since
archlinux runs iwdctl and that command scrolls continually but Jenux
controled the scrolling and while I was  unable to sign onto the wi-fi
network several times with archlinux Jenux made it easy.  If you install
on an ethernet cable type environment make sure to also iwctl since that
way if your computer is ever moved to a wi-fi environment you'll be maybe
able to make the change more easily.  I found with archlinux only two
networks but Jenux showed 7 local networks.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 30 Jun 2024, 'Jason J.G. White' via blinux-list@redhat.com wrote:

>
> On 30/6/24 17:09, Jude DaShiell wrote:
> > Also one or more updates that became available on June 30, 2024 after
> > upgrading broke dnf on this end to the point it now does a core dump.
> If it's a BTRFS file system and a snapshot was taken before the upgrade,
> reverting to the snapshot would be your best option. Otherwise, I would
> recommend a reinstall.
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

