Return-Path: <blinux-list+bncBDM5DGHN5MHRB47DSG2AMGQE2SY25XA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CE59249F6
	for <lists+blinux-list@lfdr.de>; Tue,  2 Jul 2024 23:32:36 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4459b1ce272sf69764231cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 02 Jul 2024 14:32:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719955956; cv=pass;
        d=google.com; s=arc-20160816;
        b=AWOfrZwr5HAK0KGYVFRl83p5E7m5H6W+Fwqtb6AqPxrBL9JkYQTWDaYkbywuYj1yut
         RdqQamTGt4KH5g0pf926X1STDMTsuPniNH9LuyNkplzG2KWFtUfKvTXHpq5r13v7NnCC
         Ak7mrcgigPkyCL+EM8ZQjQmHcl0IOIQbROirmI8qOapu1InUvt4qTrqAWKN+jKjiVJEo
         Ao2Vsh6hNzus2QgSbIyeKRLT1DsBzdjsBxT0acKBk4m/7Z4PQyY3BDILY4Uy5TGxpDF/
         ZJO8CtqXe2LudEVygCzZkJsUvy0CcmrzSwYiubhLzUJK46J1hEEt9MYMOgzXjUsH8Zyq
         6bog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Aqgr4DaP4R2/QRWNXgtbcDSagx3MpGZ3XcGA7+BXtcw=;
        fh=dacEQUriyyHZzVbiLSBo8hSV7vxK0Ttp1Ub580lFDck=;
        b=vikFFKC9VaGDqEJv2j8iDpJSaLHKUHmDTAqUhm/C8d+a6S16A6On8vPaXQoaKSQxa9
         CNvpIkfz+AQQwAlIdxou4PmwpdGgplh7ViqeHyze3bWn2fXV5txffgC0H8srxrVri81r
         dKzYnNVtP6vTXzhSVynMG8GRdt/NdKeZEEJJEXWwdVSt7Z11ira4EYSrhsbpOBrThXJD
         rdJAc1auJCiLWDTw6XFIwKOqsxXUXFzC8PYGBYg39GHavTjSoxVAgzWVsChUnOR36VL4
         D4rDJxhbsOTvEzGZI6qNBbtCsfW0q/g9ba/RI5wi2CEXugJZ6w3KXB/E9Jv6XkJaZ5HA
         dTAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.222.181 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719955956; x=1720560756;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aqgr4DaP4R2/QRWNXgtbcDSagx3MpGZ3XcGA7+BXtcw=;
        b=fTLtUU7B9kUDpgen3sMc804wdzbummusHWSzmJMG4RiQUBBUSUzCeERReLh1FVFQFe
         tHS9Wc7i02qS2TfrMm48nmN/4VIAZT0Z3gXqxrGIIcUFMLE1na82pg1kn0jXB4V4lQ3x
         J9Fl77YroEGfhVFcbL9MAFIftyAnKJVfvpVlol1naA1uqMSL6RFr6JMylCRyxxnJplzu
         nq6B2Nb8+/+SYvKnSlNdQB818hq0xf9l6yC5+a647WI79z9LFlbxzgIok4q6JmgZo8Xg
         oZySUqFpNXBK43usb3HMKkh3miN9/HvQKzSq0BP8l0cD/oPUTa5571cLyukVOeRtfHki
         yalw==
X-Forwarded-Encrypted: i=2; AJvYcCXw4465GVrll2mQ7383DkjDfGRXmSNl1awbtDQlKdWgpnDkT1EKXxztGM3P3xFTOR/WnzlOLkux92birR+dtHksyvz7nnMXlAfq
X-Gm-Message-State: AOJu0Yz3LFAtVZiOr4M6TBvYBeWNyjXpx8ePLsZ+M0wICc4+sRLpkpMy
	qeHCHqo80mz/Skr4eKXITroRBwVG/j9gsCWgJqFnG0Un1YqqWmw4O36SjXnEmgI=
X-Google-Smtp-Source: AGHT+IFGx1l+9HWUjHo3c2qNeE3z/AQXTdq+blpbXv/5e+1Hu7d3hWSo2lLmWVDjhZPXdEKUVCDPzA==
X-Received: by 2002:a05:622a:5287:b0:446:64c9:df61 with SMTP id d75a77b69052e-44664c9e20dmr142350281cf.55.1719955955633;
        Tue, 02 Jul 2024 14:32:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:570b:0:b0:440:4eb7:2925 with SMTP id d75a77b69052e-446529b6f64ls78663761cf.1.-pod-prod-01-us;
 Tue, 02 Jul 2024 14:32:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUaIP/6+hxGTaMd6cJwFeoF0vcIklq9gxqbFih78coU95gX6E1b0Jg6o65c9fY75i24Lc0OoozVazO8eS3NhHjy3rA5qJLlR702aj0l
X-Received: by 2002:a05:620a:1464:b0:79d:6670:e5af with SMTP id af79cd13be357-79d7ba8b9femr1041167285a.50.1719955954541;
        Tue, 02 Jul 2024 14:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719955954; cv=none;
        d=google.com; s=arc-20160816;
        b=yJzKCeuY0QOkSG+2/AdxN/PrbDjpT24cD+/azm426cEciSI4jT6l/E8nqRDfDWCagr
         s2Xye+9CCSSycDUo4bzC3p/Dwh6mUJO/kOHusW2vi7RYUN8rjQ71PeqhUoVjyUokIcC6
         kBvGJAxJyWqEIBemi899mKS8DcsB9IDYXwjEmIvgKQT1Og24dL9wob+Idvqc9lMLhpum
         yBLNrVDraUYJrqr7w6w1uVmmLzyZMHYIdYDktNlTPzfi8Xbhdu9Hs/z+n3jnxGakSY0O
         oo7n1l3AitHVmC39vfRywlOr7/Dfhcw7GTqCGTeZo67HaIW/9Qp9jewAAT/lLYhRNyZi
         /5wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=paA0ZeiAbv0114/bTmxUmIH6gMrCz+bK7xCSkCbuCC8=;
        fh=uPVVwp9b0NW+U9JUzZJw9/khuWYKLwlSX5eZK041IlQ=;
        b=M+TZT8077vI6hVNVdz+5gzQhJgklA92XY+AO0VRPjO51kxv2GBxhf45mtr2Tc/imXs
         BzN9iWvvBw5yhLUb/lD3/EG7r4lrGPxlRqaxAhYOtxGcCyKzr2MyHbEqyM42cY5I7Ljm
         P6sig/gcjzQvJst9FZ8N+iGBx8KyhGBXxD0yurUzjPf6VoL5QDN+QqcNG0RMJrpblNxC
         CnPWNW5/JCEQc8CHsADoTrGsJTiwvp+aQ6zKBSsOG2mmdpkNL45I02xbTg2NFZp1ZlLx
         wsHrmRtpl3SUEp/xNC+PQPeoE3Jz0S0Z6yZy8L2yqDkM5Tm3RfNe2cYdNeyDxzD+Zxec
         QXww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.222.181 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79d6926170bsi1114170785a.68.2024.07.02.14.32.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 14:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.222.181 as permitted sender) client-ip=209.85.222.181;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-388-idWg8ySPNLah8H262wCegA-1; Tue,
 02 Jul 2024 17:32:33 -0400
X-MC-Unique: idWg8ySPNLah8H262wCegA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5D72A1955DCD
	for <blinux-list@gapps.redhat.com>; Tue,  2 Jul 2024 21:32:32 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4CD941955E80; Tue,  2 Jul 2024 21:32:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49B451956089
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 21:32:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 74B88194511B
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 21:32:31 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-441-QKJ0TgNnOnaye1D9-6IvpA-1; Tue, 02 Jul 2024 17:32:26 -0400
X-MC-Unique: QKJ0TgNnOnaye1D9-6IvpA-1
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-79c069554f8so190032485a.3
        for <blinux-list@redhat.com>; Tue, 02 Jul 2024 14:32:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUeLe+1DCPhjYctrfOuEALXH3cvBkGc8Xc+BC0RAhcYHJ2V7aFNM+yL6wxW1NkqJDz3vOqM2zwoz9NW94Wedfzxsawx3g1d
X-Received: by 2002:a05:620a:2a08:b0:79d:5911:b4c5 with SMTP id af79cd13be357-79d7b99d90dmr1240608885a.2.1719955945449;
        Tue, 02 Jul 2024 14:32:25 -0700 (PDT)
Received: from ?IPV6:2603:6011:ba01:8300:9ce2:4b27:e53d:2cd4? ([2603:6011:ba01:8300:9ce2:4b27:e53d:2cd4])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79d69305755sm498014385a.115.2024.07.02.14.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jul 2024 14:32:24 -0700 (PDT)
Message-ID: <da71691a-e519-4671-b081-aa91c97daa8a@gmail.com>
Date: Tue, 2 Jul 2024 17:32:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Fedora 40 workstation status
To: Jude DaShiell <jdashiel@panix.com>, "Jason J.G. White"
 <jason@jasonjgw.net>, blinux-list@redhat.com
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com>
 <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net>
 <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com>
From: Matthew Dyer <ilovecountrymusic483@gmail.com>
In-Reply-To: <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ilovecountrymusic483@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ilovecountrymusic483@gmail.com designates 209.85.222.181 as
 permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
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

Jude,


Doesn't jenux require secure boot to be disabled?=C2=A0 arch itself doesn't=
t=20
support secure boot out of the box meening you have to disable it, boot=20
the system, install it, then configure secure boot before rebooting and=20
reenabbling secure boot.=C2=A0 My desktop which is using fedora 40 on a=20
seperate drive, works just fine on my system, but I tried jenux but=20
could not get the system to boot from the jenux usb drive so not sure if=20
secure boot is the colpret or something else.



Matthew



On 7/1/2024 9:38 PM, Jude DaShiell wrote:
> It was whatever Fedora 40 workstation put on it by default.  I cleaned th=
e
> computer and got jenux running on it now with espeakup.
> It was difficult for a sighted user to sign onto the local wi-fi network
> but not impossible.
> If you need to install in a wi-fi network I recommend Jenux since
> archlinux runs iwdctl and that command scrolls continually but Jenux
> controled the scrolling and while I was  unable to sign onto the wi-fi
> network several times with archlinux Jenux made it easy.  If you install
> on an ethernet cable type environment make sure to also iwctl since that
> way if your computer is ever moved to a wi-fi environment you'll be maybe
> able to make the change more easily.  I found with archlinux only two
> networks but Jenux showed 7 local networks.
>
>
> --
>   Jude <jdashiel at panix dot com>
>   "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo.
>   Please use in that order."
>   Ed Howdershelt 1940.
>
> On Sun, 30 Jun 2024, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
>> On 30/6/24 17:09, Jude DaShiell wrote:
>>> Also one or more updates that became available on June 30, 2024 after
>>> upgrading broke dnf on this end to the point it now does a core dump.
>> If it's a BTRFS file system and a snapshot was taken before the upgrade,
>> reverting to the snapshot would be your best option. Otherwise, I would
>> recommend a reinstall.
>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to blinux-list+unsubscribe@redhat.com.
>>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

