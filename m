Return-Path: <blinux-list+bncBCLPHQH4XEIRB56TQ62AMGQEQG6BAMA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F30291D4C2
	for <lists+blinux-list@lfdr.de>; Mon,  1 Jul 2024 01:27:53 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b5176fa67esf31639986d6.2
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 16:27:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719790072; cv=pass;
        d=google.com; s=arc-20160816;
        b=nfeyerX36eAVfK5H0lY9GoQbWIaLaQTUwaAG3gr9agv27mr6mdXuhfXNoisSBgXbA/
         rdmAM57BgkLIwpydLmtGUbkHnzITxLUnpv+1hVVIL1JNmXMlzYVUYsyw9fJEMLkCC2BM
         zu1IEw+vLHBL2fyd9Ugoqc96h98rf12V+rtFn9QMP47h0QVE8Cx63sY+dULRtxp+6iiI
         xJwfco+y7C0MNrDoNpZUPYQI34YtYBcDFApVRO4QCg0mGdoALVFNP8hPorhYfmrdHHYT
         4xzFu9q0OEwIdp2UyivYbHOxCMhP5eTcXauYgQHjGfZuGPqsMrbGPHOncsUhwOIHgIO+
         Lq0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=5St1O6Klhi5wWMNNGOI2GpXU55X9HsFgT4X68IxrAXQ=;
        fh=GIhlV3FwYN0Y9PrzRLkI4JBj7TULcb46fd2Yg9Vm/tY=;
        b=aK97+DTVSWTDHkJO14RtJtWoYtQFrm7aXEPOmmcXsuhQGrUqxGyQhXrrJ4WLWUdLMh
         hY3B5bZ3wv5sIYPe4lFjMsQnLnuLjxKNKZX0dSbdL5uzUuWweBZmOojyeCC5n0rIH7pM
         IpNaI3H4IBdmsZv96YFP4ULUS+DU9nLhOobG2gS18WisFEmFwNIV1pQUijB2VwUD0kJP
         RiWIWrEZDtV42rnVlGyXfQX2uh0k7ZyoN+HwUNjZ5uYPKf5FcwuAMA/DX7d+07legwx4
         YDbxhiC2I1IrOWv1sUJF+c3IFuqR4mf2SmmZGg2ioHyh5ARUotkJI+b72/FqUv8qFewT
         hfsA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719790072; x=1720394872;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5St1O6Klhi5wWMNNGOI2GpXU55X9HsFgT4X68IxrAXQ=;
        b=eAmUHglBY1QV4dhD1lWNs1fOBgvGD6Z56Xmmq2hWUvphZwWRum+VcBoK5rWc5/I7Qr
         ID1axaK0kZkt5uQ2X0H44UG2QSr0fV6EAWlZLZ4WoM/zEEH1mLcISR+7daGs5B4KK3lD
         SG+6+1c/qizKIUkJddhCqrVNxlp3t87Ff45qklI6aB/l9HYh3tVWB+z6dpRQxX39bobn
         p+tPi6MEQtGFOvydiVr6AbHmGuvwy8wPOjeJEdFw6WY1QbAcwgeKHtobFU/6rYHgeo6U
         FGXCY6xrqlz8vtGEmJzlD9/h+40V0IeLV6YtfnAcZ0O5PhpKh1Si+MUSA69NZF6II+gF
         Ykkg==
X-Forwarded-Encrypted: i=2; AJvYcCXRU06fY+VKz0P9/ipT1310R3lg73yxc7UsECwvf4STthEFYqKF160/7uiSS6IVzy/jwIRzbZDa8K/0QkbAOpbRcpo+zfbeIDCC
X-Gm-Message-State: AOJu0Yxn9s5MOE7SRMN2UaCHNl9VkgkEINAf8k9ncNen/XoiT7+u269R
	TSWejYK7MGbRPeL8iUO8/Kx2wkkCIdnu+RCFzhsOUO+3FtPbDZ8STypGgwDupiY=
X-Google-Smtp-Source: AGHT+IFn9dedtWQr3nJNux61MxoULJKwTp2KVmnx2n68qr3c9DRoet+VS6lBilYwG30N8wdFwl8ahQ==
X-Received: by 2002:a05:6214:1d2f:b0:6b5:936d:e5e9 with SMTP id 6a1803df08f44-6b5b70be06emr53786586d6.26.1719790071910;
        Sun, 30 Jun 2024 16:27:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:528d:b0:6b0:88f4:b00e with SMTP id
 6a1803df08f44-6b59fcbad07ls38807106d6.1.-pod-prod-05-us; Sun, 30 Jun 2024
 16:27:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUxErvIBbQqh+mOejAt6Pz6soD9YVhMp0dXqe8MRGBtvE7hF7qUWoe2dmG7UJMY0Pmf6UBEZPDDjBT5AIZlMx1WLleAyDPR1wbzW+7p
X-Received: by 2002:a05:6214:acc:b0:6b5:7e0b:eafb with SMTP id 6a1803df08f44-6b5b70b3adamr59583846d6.24.1719790070787;
        Sun, 30 Jun 2024 16:27:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719790070; cv=none;
        d=google.com; s=arc-20160816;
        b=whSTVPxjezxLrcjJ/h4b/Oit7bnrgyukFLXqnr+/ChjkVvTZovmIl/KkbX6Yv48Exc
         ZMEvUA3wyHacXKoNUB60ziRmdC851oFNvt8hXg7VYVwELx4HB482l9RtSkpLUAu2u29b
         Kk4gYbaLB4aliKFQZjZgM4AESrObcpVhZkq0lhxW0Kkhnp1wGsDfyWqZ3L/DchHp59dV
         NKAnFky1tP0Sap1HiIZBF8JaNqfXIblfxp1HcT/Px8UHX/r21CbJJ7f728lY5T/gpkqZ
         7sYAbRw8KcDfy4qzyTUCyzZ84NQunJKr1pRTm0j19IktUM8P599SbS/ysLfCggJEQJDa
         nMgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=wlEwohxvLzRSvz0xzXFUUGriXnSu1669JgMQfO+Xans=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=KUmp+dJnY8VT/jauMJ7WdiH5m581O1gLlJ3wNObMA+k+nhlP5PSUOb6/i1b+Qjgcg8
         OmCCXOFD7jqseZALoFAQrPhbmwofeTEkIn6nAVi+npDg/TxCNmTpMbo15GUz+BvqobkY
         4HsQ++/zd3o8hCLI90midGKGXZvf/IFFmhocg40y0OD3z0VPbfQMC/FYDZIW5CzL23kX
         LHjpIogq1YqqrslvM7lPtrA+1yGabdn0Mijy8VaaqjGkQ3oVpQg5oPuvcilyvO6w6Jmg
         jHHF4O8/3L1avD5wgT1ysn4ohUT1Hu4YL7JIqqyF2NWJhzOcrqsLwh+20/qt992vv6l/
         V8yw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b59e5ad413si69773926d6.276.2024.06.30.16.27.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 16:27:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-z3y--GmmMTi-J6I8QDPa7g-1; Sun,
 30 Jun 2024 19:27:49 -0400
X-MC-Unique: z3y--GmmMTi-J6I8QDPa7g-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49F5019560AA
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 23:27:48 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1B1DA19560AE; Sun, 30 Jun 2024 23:27:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 18B2019560AA
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 23:27:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 65F7A1956080
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 23:27:47 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-AtZshqofN22GOmztMWUV_g-1; Sun,
 30 Jun 2024 19:27:44 -0400
X-MC-Unique: AtZshqofN22GOmztMWUV_g-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 4244532065
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 23:27:43 +0000 (UTC)
Message-ID: <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net>
Date: Sun, 30 Jun 2024 19:27:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Fedora 40 workstation status
To: blinux-list@redhat.com
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------kjzt0Vt1CIFM1R8ZbebkKPZx"
Content-Language: en-US, en-AU-large, en-US-large
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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
--------------kjzt0Vt1CIFM1R8ZbebkKPZx
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 30/6/24 17:09, Jude DaShiell wrote:
> Also one or more updates that became available on June 30, 2024 after
> upgrading broke dnf on this end to the point it now does a core dump.
If it's a BTRFS file system and a snapshot was taken before the upgrade, 
reverting to the snapshot would be your best option. Otherwise, I would 
recommend a reinstall.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------kjzt0Vt1CIFM1R8ZbebkKPZx
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 30/6/24 17:09, Jude DaShiell wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com">
      <pre>Also one or more updates that became available on June 30, 2024 after
upgrading broke dnf on this end to the point it now does a core dump.
</pre>
    </blockquote>
    If it's a BTRFS file system and a snapshot was taken before the
    upgrade, reverting to the snapshot would be your best option.
    Otherwise, I would recommend a reinstall.<br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------kjzt0Vt1CIFM1R8ZbebkKPZx--

