Return-Path: <blinux-list+bncBCVPTHE7K4IJTZ4XWUDBUBEGHCL5M@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E7F93E3EE
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 09:30:35 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44fefc0296esf41413671cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 00:30:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722151834; cv=pass;
        d=google.com; s=arc-20160816;
        b=Alt4atA+WGjaMqA3UJNP6UI2o2npHSpUHjaDUs5nk3WIuzhYK/ketCDwyocjafSX7Z
         mGnfD98xLYWFUD6owH5wz4FFmi/KnArmKy+0STAABdwwrVr9ZERSeVMEe0jmZN9CUk74
         8r48F/tAxDZwTxlaTIiOyr7Bw0QnPCJKwzttzstHvCktDHkDJMTVVWAdpYE3tY41oV3J
         rsrpXRgPkOO3eXnWL+txNtkOfWtVUgnovrvcn49Cq+NdwsEZZnI1c9ruyJ0umnzxfdfM
         hAxKtlw5Km81AKuDEH4MexX3SVKePWxpddTzppHsM+vUajUWZAePNlQZZ8/hpizqr1eK
         H/Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=9m9kJOIshfSAHCrGGfhRnGmzZw2mjNkx21eisnSDFeM=;
        fh=+7yG3QAVBjmY11OwtzVLyxwAiocpnawXH7Ok5Ashdjs=;
        b=aZG2qXXZ+Ax3JuakyMlv7TVnxTttA5eoVfmq6XaEnPQ9c8CaSxrSV7asXA88fqJA9/
         v7ugfN1/uMHjz4Ig0xiMe8OYGIZTLHuaYyo1oIfLNlER/PZtJ0LcwYufH4yxKPrdVQsW
         5Mek6VpoUGa7Cp/Skmou0dugkk1NDrz7IU3hJyPM+a9qA/iIFEgbIXx6YP0oiQkOZAO+
         /24VAjTcxskjoV9df5iMCEypP82FZ0woKiPTDM+rm1MD4GIEuhbus62NHkztVuxx5HDm
         QukEQswIAuYWYVKnzRzhrhiSD1480G7lILAOwnlCQaplUT8ATvojoxiysDSiYqWriPF6
         1RVg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722151834; x=1722756634;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9m9kJOIshfSAHCrGGfhRnGmzZw2mjNkx21eisnSDFeM=;
        b=p65Hd4o/OnYx+G014zRL+Oarw8BlarKPP0VtKz6qfCTDR6IAqrXSwsNp1A/gZfRLvS
         //9Qqo9JXSOxGFqeBxo2137KXucCNir+aTJeIo84yuCsLKIIrAKq9fF8S73JvoGr5QjI
         wxekSTw08m+AQl1XFGCJpVfU3B2OeIsxnyG27dWeLYz2bjdAnNhtPIXzqSK7k2oBiJt7
         EcGW2YTQolglN9q/NEzcWAknNU6nT7eil27rH+WjVyCp/Kd3GjwZfOR68b/RfqKCIZ5B
         40bMaXLBPWrzxLtJexS/voq9qiDj8LOnkEepSk0CgmfZxhu6zDnedrEprWPyEt6lneBL
         82kg==
X-Forwarded-Encrypted: i=2; AJvYcCV/UiBAkgXHuimd7Vdvp6HS5Tnmql3wCJDWEZLwUxgQkOZHWTcblMl69Kf6G1F2G4MKZ+gVvPqSog6RVrwDa1xLVL2iqSYl9oud
X-Gm-Message-State: AOJu0YwCseH3/5oOgn59PdLOvYS5GxYSgiM7J4X2b1g2J7fptyKPREOx
	7GDk1IW0/JLt485gtMW5fSjNVsWBqyYyJsrH0+CpfR2w6hmWByKvNjZKzu00I+o=
X-Google-Smtp-Source: AGHT+IHLQPnsKMSLhiyTBua08tc3ZVPk2yHMKd0+Ut2HAarn1dErA7YXHDXfwDvIXdzhImzMVg4nkg==
X-Received: by 2002:ac8:5dd2:0:b0:447:f8b1:aeb9 with SMTP id d75a77b69052e-45005b002a0mr75094431cf.16.1722151833476;
        Sun, 28 Jul 2024 00:30:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5982:0:b0:444:f3d0:bcbf with SMTP id d75a77b69052e-44fe2ec522cls46845991cf.0.-pod-prod-00-us;
 Sun, 28 Jul 2024 00:30:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXn0Rppw3aOV1oayWxxm0lWOKusillqHfhqfC9OqsGmHtGEGm0zU3iaTXFoyKAsiPFbMkQRdBDptS3u8UKwuwu4nX9Wba8Pq4yVtwmC
X-Received: by 2002:a05:622a:134a:b0:444:d0c9:7b6a with SMTP id d75a77b69052e-45005abe550mr81143171cf.3.1722151832416;
        Sun, 28 Jul 2024 00:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722151832; cv=none;
        d=google.com; s=arc-20160816;
        b=uCfIpdBzMWqdY3YJ01dojO92USus73NXDk/MWZd0Gdq66AmPJ7VZ9Xo2/ATTktJxFu
         38YufaDeahT7C6Q35dEdJFHuVkckFi0I8QGCJEU5X1mQ8tSyLIvu2jND1E7dKf9Sqf1j
         1vTCcjvk3+MFUm3FrPMDgou77KLfHI0DHuH4cP/3RwBYdGgyTNs7uTmaJFA+66x5QJI7
         GuFX6OgE97yaOxY+sBJ26RAvvLyuR7Bvas9dHmEFDL7VnkMNqUGLS+VA4vJ2a6tIMk07
         CKyeFNzFS5oSEdcwqTS3eKwcRr5uDbtnyPH/LMdLEDchkEd+/8Ux8/SMJQwiK3L5V/Qk
         K6Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=9m9kJOIshfSAHCrGGfhRnGmzZw2mjNkx21eisnSDFeM=;
        fh=KMVp+TbGtKVD322h6kz+6FYaExctaXxn0Lhb/1izxxY=;
        b=YoId9i4RTAEBfLQOau7/Rn47cRPwB26BDS8CmUpTfKMhk0tpzqLGZcTkmK6TNGfPJe
         Pix8dyEKMIZ8dRyScCcpJwJgkvgMKynoN1lIBQMSu9bDN41l+WQ1YKJbmATDsVdMaTLw
         3QHwJ9D6C1XBwd3z82qDUv6AAINKBUbT4f5kebnvFYhq1Yi/kUWYTS4wDyPu745cmfgZ
         +IlL7h41DZnSp6654WpFe8ZzuXM9XbfAcCCX5lhUr4WKYUZi4lbx8hXDMqysKwDbakrf
         L/Iv7b9tihLPRnTlwCVtk0+ZXwLH5zyHqzNmnBUhJTDDbAC6ft3xr1KWBUVIrOBYGehf
         gNyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe813c660si75563201cf.96.2024.07.28.00.30.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 00:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-97-HYrmIQx4MkSOBobAwNG1vw-1; Sun,
 28 Jul 2024 03:30:30 -0400
X-MC-Unique: HYrmIQx4MkSOBobAwNG1vw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BFEDB1956095
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 07:30:29 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AF04F1955F6E; Sun, 28 Jul 2024 07:30:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ACA7B19560AE
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 07:30:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2AF2B1956095
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 07:30:29 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-340-qPt47_wWNAWWRFXJuBvemQ-1; Sun,
 28 Jul 2024 03:30:21 -0400
X-MC-Unique: qPt47_wWNAWWRFXJuBvemQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 54E8C44FC8;
	Sun, 28 Jul 2024 03:30:20 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0A7951001AB; Sun, 28 Jul 2024 03:30:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0868310007F;
	Sun, 28 Jul 2024 03:30:20 -0400 (EDT)
Date: Sun, 28 Jul 2024 03:30:20 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: john doe <johndoe65534@mail.com>
cc: blinux-list@redhat.com
Subject: Re: scan and read under Linux
In-Reply-To: <61c34791-bd27-49da-8ee0-4e464ed373f0@mail.com>
Message-ID: <Pine.LNX.4.64.2407280326310.3815773@users.shellworld.net>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
 <61c34791-bd27-49da-8ee0-4e464ed373f0@mail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1297134864-1722151820=:3815773"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1297134864-1722151820=:3815773
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

This is quite correct.
based on the steps you outlined, an image seems likely.
If the Orca specific suggestions do not work, may i echo one Chime=20
provided?
send the pdf file to robobraille.
convert@robobraille.org
attach the file, simply placing what you want the end product to be in the=
=20
subject field.
html or rtf or txt for example.
Robobraille will send back the results, often quite swiftly.
Hope this helps,
Karen



On Sun, 28 Jul 2024, 'john doe' via blinux-list@redhat.com wrote:

> On 7/28/24 05:20, Ryan Mann wrote:
>>  Hello.=C2=A0 I have the Fedora Mate spin installed on a computer. I hav=
e a
>>  USB Cannon scanner connected to the computer and I was able to scan a
>>  document using Document Scanner.=C2=A0 I was able to save the document =
as a
>>  PDF file.=C2=A0 How can somebody who is blind read a PDF using Orca? Wh=
en I
>>  enter on the document, it opens up in Document Viewer, but I can't read
>>  the document using Orca.
>
> PDf does not mean that it is a "text document", could also have been
> scanned as an image.
>
> --
> John Doe
>
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
>
--1949452079-1297134864-1722151820=:3815773--

