Return-Path: <blinux-list+bncBDYPVTOXSQEBB6FYSOZQMGQEQCREBCA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA669013E8
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2024 00:34:35 +0200 (CEST)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3d2015beb33sf3531956b6e.3
        for <lists+blinux-list@lfdr.de>; Sat, 08 Jun 2024 15:34:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717886073; cv=pass;
        d=google.com; s=arc-20160816;
        b=tknx2DanNkpoqfedgV+KCNhiWvbeA48fLdSk8nl8qsbP7iY6DxWotpjDo9IXkqO/Zt
         HPGzu52Ta1FV+7k6L68Kxqhs3lnVKDx29t63T0VvNqTd2AW7rNoA4IRHaBufiZ2XfWDM
         xFQJzCo1vVd+/1HraNTmNFLaloBHBX2wgvgoySaWLIbPmxk0lzYaU7YFXgEpjgmHY7X3
         duZb0E4NLqrPxBwMsk8luxHgoisottg68IhD/hRekQGsawByKxSQ3j4d42c1D8JKHFkp
         3kJyCMZO1zi590RH8S29p7lWxoOTDVw6ycRPdEa0k4CJ0WD2vLtEGbhgvFeNdnti16AM
         cp6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=fbEhXeq51rACdDqc68fQA0DPB8kK0oXzMvGiT+BdnkY=;
        fh=VLR7YqcM6mh39pLBSIkOb8LaAY9gTR7RGRvIcw4jnJs=;
        b=ewnT1jQy2NUjH3XgccBeqji2ztgGpHkhzb97lvjUzjWx8Czp3zr1aN+P9QVq6IEs2K
         uk00mdDs63rwxSPf3M2eUDT129z5XBwZqAzsLdX/7/b7YQTE1LJ6AKnpS9LLkONKU/JU
         EP69pSZrM7ckiLuyRL21Jiq4LPskHpG4JKLY7dzUgiJhZ6p5fPQzFHuNTeBqOosYDSC6
         CUVK+sug7ASfDQCfWknOUuBNcyfLTN4Iy6Hxy0jN4FVs8eUTU4M325gS2nVjbQqs9dJh
         aaqQSc2xXv2G+vYYej524ifAxxG1EyB7CjOcuZyBpLuwADDV+Qc4wqrnM25xx0xYg+Bc
         vfcQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717886073; x=1718490873;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fbEhXeq51rACdDqc68fQA0DPB8kK0oXzMvGiT+BdnkY=;
        b=oYMnOYEhv+imHO96AbGxfsRywYfOwBPcdYtPXMeNwTQahFdGA+Y5XgLKK7/dEpVtBZ
         DyYBSqHQRphAxOLrSVShOETP5pkHOMwfyWR7yrrgjv0NQV5Hq1nquc/1kk+u7tAwUh3y
         jkzwplPNMz7AIQDby95Gw3wSH+g/nE6Oomsfo3E3RAtsVb6UBX0sBpbW771jtLEAZ3JS
         X9UTClLKEbRG0isG5tHOuVpYDPd8dp2U9cmIt3NRsgdwPjrovNAnDEl2hSYwIVxzdE4M
         KyE+n3tuwgEMkJJq8cSZSrwRRfHTmXNdRDQtkh5PCnGw4LwXpOz1zHXjgCTcztGJN4e0
         7kew==
X-Forwarded-Encrypted: i=2; AJvYcCWntZRQJP3L/n9ZoVwtN1ULJWheRI3qia7nT5aaz6vkpUkDUZHf4xRGoRuQje4QvWIv6rJFybxymDNdbzkJI0okOyUU8SITMDzK
X-Gm-Message-State: AOJu0Yz4OyQHPv7I6IadmR37dga3KAynlprJCSyLRu2QqkNJw+CV9qpO
	yH7LWf/4FLmWvdAS1FbxUEFQp84JQJ0SSX96hFdFixPCPpPKkSb/mgfgt/mPFXk=
X-Google-Smtp-Source: AGHT+IGUIt/9YUnwYdjYXPxwpcbjZVn9EMeDaKO94JVMiw9wLLnhgQIP5MM2nmMvGudUzbXVnpiQOA==
X-Received: by 2002:a05:6808:200a:b0:3d2:1bf6:c56d with SMTP id 5614622812f47-3d21bf6cd28mr3260073b6e.20.1717886073128;
        Sat, 08 Jun 2024 15:34:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1949:b0:6ad:782a:b4c0 with SMTP id
 6a1803df08f44-6b0573a32bfls36814246d6.1.-pod-prod-04-us; Sat, 08 Jun 2024
 15:34:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXblyQGTxNxy1aiXQuhebnctVcJobi9BDHYmFoYQlp1NqZ05OCcCSNnNfbQLuGB1kPJLTTifhR+mg/oirnDXKTB5T8KGou0KV3YwFPO
X-Received: by 2002:a67:f949:0:b0:48b:beee:810d with SMTP id ada2fe7eead31-48c274adf24mr6493886137.32.1717886072087;
        Sat, 08 Jun 2024 15:34:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717886072; cv=none;
        d=google.com; s=arc-20160816;
        b=EI8H1rYizoQ8WBbPqhTBsgbyaQsceyN37WdAb8MD9JnlN0Hg8vx+mESjGXDl7ZKaaG
         YB23C/N6OfZaj3k3QCLSuXpz26ak3Te4kClHcG0IHt4EWrHbmfx8tGilGHSyjlpnwk0i
         m6VbrCDPy2808kUgUU4USwgTkp7g2fNhVvOpQNEjtw9Ly5VyEVZwdfmFnaibL/p1zh1m
         eSvZrYdzCSL7DnxaFvRKHyYMEWDiAD8uvZkem5d8+a3QvIox+gQpfI0qSJl06w/mGDXq
         GIItWtqsFbPcNevaBBCSmSO2hVdIJwNG/Jbz29f8uFVPdBXgr2nudDDHpgqXmKhbQguD
         0o3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=MMtbTvYHuCpn1+A68X7QY2QJbpSrO7j3kDfh7DmFg58=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=QWluBECc69egqpoAJzV/nlH0k1CGKLHu/mdceVNK8P16gddMH282APIG7hcJ1E6wRz
         1k1n5PDso/skw+UeJGhEyiC5jzVsaW/zXq2vpmGc+EFejNlnIq7OLDZZHMTNizWS//Oj
         Ahms21alVJPXneIDFdguL9lWS425qMIuxBu2ix8VhDpeiNNQsPok/8hG7ApiyHLk8WHD
         jRuGdwQDsgeNuvc0LHFMc4/nNQJQPvSd60bLxuKaZeEsjlY0ZX2O4tqhv/arARnGlJG6
         vXn/DvqAmx2M0q7ZZNuPauc+elpL/mpDv1RzFjbTKeMBUXnFj2iwcDEtIqR8jF/JvewA
         /xyw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79533339f49si776045785a.561.2024.06.08.15.34.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jun 2024 15:34:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-610-hoWO6hfZPO-BZQNSuFC_Ww-1; Sat,
 08 Jun 2024 18:34:30 -0400
X-MC-Unique: hoWO6hfZPO-BZQNSuFC_Ww-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D52C31956080
	for <blinux-list@gapps.redhat.com>; Sat,  8 Jun 2024 22:34:29 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C56EA30000C4; Sat,  8 Jun 2024 22:34:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C2AA430000C3
	for <blinux-list@redhat.com>; Sat,  8 Jun 2024 22:34:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0DF5819560AB
	for <blinux-list@redhat.com>; Sat,  8 Jun 2024 22:34:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-118-LwGHSow5MZiXRANenX96-g-1; Sat,
 08 Jun 2024 18:34:22 -0400
X-MC-Unique: LwGHSow5MZiXRANenX96-g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VxXtK40lGz4DWH;
	Sat,  8 Jun 2024 18:34:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VxXtK3dwDzcbc; Sat,  8 Jun 2024 18:34:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VxXtK3ZRlzcbC;
	Sat,  8 Jun 2024 18:34:17 -0400 (EDT)
Date: Sat, 8 Jun 2024 18:34:17 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: Trisquel
In-Reply-To: <324ee61c-2792-435c-b05a-30ae5cf0784a@gmail.com>
Message-ID: <b29d005f-b199-17f6-66c2-cc7635c663ee@panix.com>
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi> <20240503123117.6vhsfjpfuhjgwxno@begin> <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi> <20240503125138.ccmtstpyuyyyyf3e@begin> <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin> <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi> <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com> <324ee61c-2792-435c-b05a-30ae5cf0784a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Beyond the partitions there's the disk label.  You might try erasing the
disk label and try the install again.  If the installer found a disk label
it didn't like that could stop an grub installation.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sat, 8 Jun 2024, rodney jackson wrote:

> I have just installed Trisquel 11 on a duo desktop.
>
> and the installation was going well until the end.
>
> it gave me a fatal error and it said it could not install grub boot loader.
>
> so even though it is installed it will not boot up.
>
> the partitions were deleted before i did the installation.
>
> so how can i fix this i tried this twice.
>
> any help would be appreciated.
>
> i installed Trisquel a while back on a dell laptop which is a duo processor as
> well and it works perfectly.
>
> so i am not sure why i am having issues on this desktop.
>
> Rodney
>
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

