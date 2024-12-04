Return-Path: <blinux-list+bncBCS6LGFW6MFRBYEHYO5AMGQEI4JKP3Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BC09E4640
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 22:04:35 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4668f208ff7sf5977091cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 13:04:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733346273; cv=pass;
        d=google.com; s=arc-20240605;
        b=g1BXBWeyOdQtN+WMVQ5mGT/Y9ZchUdG2nGuMHTVNDkhI1kiqs8nTWAhluCPQ+HuEGj
         2594qcTn5Ccvgv7R8OX3ojfVzUawqtgmkOu/LRRi86Ju8qGcl/6kmqF8494DuHHaA/Ra
         L+4wjD8YiUWdU6l46msxd+XH8cd5/65vt/XU0s+Uq7+bccAqjnQfgPpwzEfgZxFhJv5s
         dL5xqJUHOb6n3ANsxIzFJInbxDqWAxNsJIPodz+Rkxyv1zvt+WLgmrBa18CvezjxYlXv
         RMyBiyj9dZz77OutzOYzBpZNqPLDSZUbOJNOpGZeRc7iSVLWIC1BORsjYH3Ty91VRr6I
         Wdwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=gz3ZwEaniuBs9prEqKbBrhxA22aZwyDztI40+VH1T8c=;
        fh=oJIpP3Puq27TFHKWFaVt4ITIY9Y8iJ84nq7JBLAzw/M=;
        b=ZDM12RemMAznGt2K4y6ouE4jVOm60E/Tn6uGuZuae0YFx/+cRR2J3WLphQDNQUcFmT
         tZFgf7xAyIGUNGXpzdc1rI5NdYAnmah8/8Xokth4llc2qta3PHsWtXCZDW/vWTCz9A3r
         IGp6EtpsEnI5Xkyw0PzHWWlpOFbFDE7GM9eN4/9tBRBQDlt5X7B+jy3WJTBq0Z4x8LPZ
         1A1HGoQ1SjC8iYO31jP8l8nYAOsJ1+200ug1hHmdv5mF2hc7xsaEBh3tRpwuZsa+quSP
         F2jz1BRlUrBdB5DIi0DzzAxByoReb4Q+LRDxEgCNb/ocJHPgJNGHF8vw+27eAVj982/l
         dO9Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733346273; x=1733951073;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gz3ZwEaniuBs9prEqKbBrhxA22aZwyDztI40+VH1T8c=;
        b=YnfwwF2k/ZYWvUlEW/DbFhpMwNQXjjVhqUWeXgqr0/Ez568eQshIGo2W/QHMs1+qqk
         8mqVTvl5y3hIWXXWppAlPAOkdXMyRgSp/hT6yVww+PtbfbEdseR7zrDaPYH3dpGd17QG
         zXm9D2OZi+TWYJgCqYGZQHL1C+6ZhNil0tHbyJE3ANnpQ9kV0AZhsAKBoWKAP+fDHqFd
         T9VK1QNN3CFJP7rOP8TRM89T1iqBhy23vbgykNtIs+AYc4QGtnhDqTssjre/VN4PU0nn
         njbafpBQWMtU1Z/mMfpnh+6GEz+u7HJNe7wLzGfpJSMmlc/EzxQ5k1Sn/ilMYAunAYyy
         lg0w==
X-Forwarded-Encrypted: i=2; AJvYcCXIV4Lg248eedASH1qjBpZRYsCR87+tTFF8D2SEyyilUGzaEkybBfh0YXarZT60iAmv7qkU0w==@lfdr.de
X-Gm-Message-State: AOJu0Yxj0/qjg5v8xHdoALs5baVNhXzF+pF2tVTuKptdzMSLSZFS3zNV
	JFSeu8GYJn2jFV2WOwHy18OoWEy4xbnV5RUUUgQJge8TmOD3QQqUhyaM6Pf3Q14=
X-Google-Smtp-Source: AGHT+IHPpudOkkv5FG1Bwql4HUUkBsCeU8a0Osk5HwA7hkvoPExNT+2PCf5Z6yZhddRcFyZ9TFAcaQ==
X-Received: by 2002:a05:622a:181e:b0:466:9197:b4fa with SMTP id d75a77b69052e-467279dfbcdmr16048341cf.21.1733346272784;
        Wed, 04 Dec 2024 13:04:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:59c3:0:b0:466:a239:f7c8 with SMTP id d75a77b69052e-46727d25f0cls2925101cf.2.-pod-prod-00-us;
 Wed, 04 Dec 2024 13:04:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXJlGsJC2S+6Z1Nc9ghB5eQwCK4UrFOAdbQR1md5It9NYCd5HEgUD7geknZmDEeFa90nmpuhZ8dopjyHw==@gapps.redhat.com
X-Received: by 2002:ac8:57c2:0:b0:463:eef:ba30 with SMTP id d75a77b69052e-46727a3d72bmr12773501cf.20.1733346271453;
        Wed, 04 Dec 2024 13:04:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733346271; cv=none;
        d=google.com; s=arc-20240605;
        b=TqK9SIpEHvddwUCczZPArL+eyjkwgp65Z7ze63mU2Yfxtn9YuSGcQwVZNLc3FUyh3k
         7V3UeQZcZJ08SWXaW3CLmcwGHjxVv3o3RnpEkPpcfVANCVfTJor+Scg2JTntMWo5OYoo
         JeNhY8VimiiBwNLBAaS4aBjRo3oX8PrKPFz3FJbQjq2Yb4S8SbeR1VmqhgirmkW5CCov
         8/AM8Tlm2K0ch5RrDnxxHc4RKMeoG9aIxtiSTUWUqvM11cCbiJDadSEzn+WGJNpp0iZa
         3mpB2653oIO4mo2V2+Ix/6OYKXYiGXMT8bmZloMpeXL710DXzwvz4pDYKaS6XUdvP4sp
         Wquw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=pA+7VhbEptrJP/DVzG32yB9Gp/IYeEEpJOZBrMVZqJg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=J5ZRX+zzOAosszusI2ekZ5o3UPLJA4HHwAKkvhr4Hs787BQRbusuoAjllN3xLagOQZ
         cz+rwnULUERMY3yfD6B1rYGVjXAymuEgYqI1KkliArFUTFGQD5kHM32PvmacObGzBnMV
         U2px2Fe2M+DG1FAwKjyHD05Fwj0ayZXevvbj4tCFjns4pXY2efOhmv8GEXCdugPAwuQA
         JduJkthhxAUEr7AQ7gGhT1LIeZVlMJ92byQUl2MwFk2Ccj6efGMG7y2aumwpIZTLv7XZ
         KAH41QayWiQiOWXAeWqn2bXjeW2cVVxAx25/B16q3/aOIz1W6IbLxG/1/XSy+Q2aUnZu
         arMg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-467297baf39si27191cf.293.2024.12.04.13.04.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 13:04:31 -0800 (PST)
Received-SPF: pass (google.com: domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-331-cI5mC3VFNFeMH3K2SMWVMA-1; Wed,
 04 Dec 2024 16:04:30 -0500
X-MC-Unique: cI5mC3VFNFeMH3K2SMWVMA-1
X-Mimecast-MFC-AGG-ID: cI5mC3VFNFeMH3K2SMWVMA
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 649A51954235
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 21:04:29 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5EE651955E89; Wed,  4 Dec 2024 21:04:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5BE271955F3B
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 21:04:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D4F8C1954235
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 21:04:28 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-fnSbEXzYP5uYKrm8auQYZQ-1; Wed,
 04 Dec 2024 16:04:25 -0500
X-MC-Unique: fnSbEXzYP5uYKrm8auQYZQ-1
X-Mimecast-MFC-AGG-ID: fnSbEXzYP5uYKrm8auQYZQ
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.175] ([79.231.8.239]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MXGrE-1t9aT81bva-00OrnZ for
 <blinux-list@redhat.com>; Wed, 04 Dec 2024 22:04:24 +0100
Message-ID: <5305780c-2f64-4261-9d8e-d79c83aa2d68@gmx.net>
Date: Wed, 4 Dec 2024 22:04:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Might 1 of You Please Remember?
To: blinux-list@redhat.com
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
 <94c7528f-df0d-4648-b8da-acadaba3460d@gmx.net>
 <24053523-34f6-0be7-50d4-5766ee8dce51@hubert-humphrey.com>
 <82671067-e4bf-4c49-9d29-720efb0c8f49@gmx.net>
 <2af1457f-b409-25d6-f012-bc12fe0a16a7@hubert-humphrey.com>
From: "'guenter' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <2af1457f-b409-25d6-f012-bc12fe0a16a7@hubert-humphrey.com>
X-Provags-ID: V03:K1:c7Yo/GLUVNQqfy+16hcTWLTtK/SIXtIaG22F5Cjy4+3OBVPa1vH
 rr/Rw7/jjmzdKy/89epYC03txp7Fn/R9kETaBmu01/T7aHI+gYAJRxDDpQhk3SUPhz+go0c
 Dz+zmyUikXfESBthspXYTOhWahmcIBhWpVdyTJxeK0LlG96U7K2btPNQY9OObC5XeOis0uJ
 Ix4mYscvU4cUxZ1AYtNyQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:g15qmYVA0Zk=;KS3PUvXnks1auvPR4Z2ClJGNdKw
 OJnvJwrtzH7MlRaOpPvTbQSv8bUxJjsXudIVxr6SmdUeZa+idoAvG8d6Px7sCpgd030XehgMQ
 ov/gmpzvvK8f2z6QiAj91p2hKuTVN8dn3IRLUUl40IkuCaZgSMWC+U25TRiHAdZAoEOCtu/NA
 6UxZph0AU88Ni4R+XsDVGFvKW8CRf+4W0DfceVM8JESyyOzsiVl/vmApfjb4uIaCc+laTR+gW
 uE96ROGdPg0q1zMfvfiHFtwLL6xcsInfNZp53hgklMXiyDBgnzAFdA9mR53/uYWHgfne/eBsq
 6BESrqZApGmN3ZxtoKWBqxNOg/TNqi3SuzxtE7kKgWPM0S5Yg/TetOvf5JUdbNjpawthNG8k0
 tLVTBXnYGFUPpQM4LySq6sbcuHb+RwdQSOYYgH17W3Kqy+m6eyW4NsGV+CnA93hRPyan4b5Sz
 JPW+3O9RJlWKEKOj7PDFbCZIH/2mpaQyAzopsP558NqvI261u12XQfS/u1hQ8OI+i4+V1gxMb
 SnZahtQ3dJMb0MX1XvgmbMeGJB66xCWyh51y6QC7yO6l+zqC6+8aNvZMj4mHFgMiDF2xpOEDH
 De/g1aab5Ggt4FnR0qa6ltHrm0bwnJrDvPvhDUd3EcZ8VoL+wvi/q4FQGCGDRbCpg2VzEf+Sh
 oFlQlGOqbfrrViXFp4jMMsolamTRBBzvluu/yY1YQ3Ls4iUuvtnf1+9jih12Ziqwoego89DCr
 F3vKQPtYTZ/iALugskw3BNFRhebbEynt5wOJjZqLNyoo1jDXy8A08VKMPWojV6UdQUq6VV4B+
 05eL4tsIUA1vzG6VgEuTS/2JEh77VSJVRirr5+5U4wHnh2ayHJzLA2DkABa222XsyXT96jTcr
 gkyCy83tqxJKcjIn52nOiQi1DAcTsYVhSJTDyNPHAyGtBH0FPu3vdGokWxRnGs5XT3Lh14l3C
 o+4SYdIaAsHyyAHsA0dAcwp3AZQGVmu04MOKgg/yAjMan+MkmHW45zXmX2M2aMGNOXxly3E9Z
 qoFe3WP5EU8eh9L95y3yroxkbEXI3hUUp2/SF5Z/CcnEqgCWl/moPJ58wZxRKru6/drCuSiAI
 IWVV3KeL4=
X-Mimecast-MFC-PROC-ID: NWglm_4fRv3WkGnbYYGqCJJuVFhxSiITOT1eaKdbRmk_1733346264
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kIenJBKKdQJrbwDViFBBfYTeToxO5AejNEFPl9f5UsE_1733346269
X-Mimecast-Originator: gmx.net
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guenterk@gmx.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Original-From: guenter <GuenterK@gmx.net>
Reply-To: guenter <GuenterK@gmx.net>
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

Hi chime!
If you want to go with cargo then add folder
~/.cargo/bin
to your PATH environment variable (all upper case!).
Temporarily by issuing
export PATH=3D"$PATH:~/.cargo/bin"
or permanently by editing your .bashrc file.
e.g. by issuing:
$EDITOR ~/.bashrc
where you add a line
export PATH=3D"$PATH:~/.cargo/bin"

The simple way would have been to download the file
from the direct link I provided and extract file trash to folder
/usr/bin
which is usually the place for files like that.
But anyway.

hth
guenter

Am 04.12.24 um 19:52 schrieb Chime Hart:
> Well, Guenter, thank you, while looking over another github page you sent=
 yesterday, I found install
> instructions, wanted me to run
> cargo install trashy
> so I had to install cargo, which installed 141 packages. Now it wants to =
add a path statement to
> /home/chime/.cargo/bin
> I thought maybe it was path=3D=C2=A0=C2=A0 but no path command. Thanks in=
 advance
> Chime

--
.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

