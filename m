Return-Path: <blinux-list+bncBDYPVTOXSQEBB77OZG2AMGQELVHFLVY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id B72489305A6
	for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 14:48:01 +0200 (CEST)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-e03a3aafc6esf4669374276.3
        for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 05:48:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720874880; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jw36OABeQrbPKbU5wgbAj2EAfte1zpu7adyfS479/xwzUWl9oZqTE4snqIxxNjm0/I
         ov6VQjxfQdysAvDuVqjrqNjkZ1xa787eCNn9Bz1SsDMUR4NoOBaH6vZsf+woANCIh/Ar
         gQ154TAjN4muYganj7aDHX+vHq1FBifqrJ0ECseuSWHg9FO2fl1OigRPEYqW4w19gOz2
         0ay2h587gko4hia98eqdKFSbbK/2BklSzi+Btc1CqOdr5IlJfMxGQKtp7keoCARfHN7z
         QIu3H/DZxVO5Gp8rMf7VbFVKfJxX6mwkIh/m0hhvF5h0rifznWxmHWB/dT9+6o01dIP6
         wK7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=b2o23odaXWlAefA+YZf6cvxY8wGz9hohgW/1d2iygtQ=;
        fh=zMB+lOr8A/jDL5b1z0eu0r1WqO1TiEHlh++KHDNvQaI=;
        b=GnVE4o+lmtsZRk3oHsIOnZg+nzUCbgGiAag2c1swymyx0ottEWQCiYUwU1fBxhtsY/
         6HNUHDsauChNKKqiEfQb9++HCCq6Vqk9r9eNmxyx/v5rnarN8xqF8Ri0SDU0f+F3bWZO
         Dynu49ZRgEN34PNb3H5dCSgUM9brrsSHiZqcdrRtf5dFxBSYcpUIFYFcg+whZ7dlqyw/
         UKcDy/DPjj9fY69MGplpgohiZ8Tdpt2ja4Wl8wg0gWQlVVvEhnypjZ20c9h1hR1m/pQ+
         +8/2EkRSbAEwII73BR8WVP7oxv24cX6wGctAk1Dfi/PfR11jjg+ZRSGx+i8BK57lr/pA
         QQDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720874880; x=1721479680;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b2o23odaXWlAefA+YZf6cvxY8wGz9hohgW/1d2iygtQ=;
        b=HcDMNZZnhRDHoiCuoyZRLDX+bgz+6Xsz0ARCg9uXxf7K9GkmJfLlSdwpW+hNDVjO5P
         7tJpTk4110USjas5Y+5aZCn/AdG2G1CT6OfwxhFyZsXi0q4a475cDzA6kFpo8FHyqqPQ
         qnnMYkOAVXuMYdSG3Vrh+WvrZCKk7v5P+zt3j92g3vhIpOhEvM6TbAINq06z+fvRpW3X
         2uNGlNZxJra12yuAY5Awhb6A72Ki/hTnP3eE4qgZlpcgkSq7DMtNw+/1zQI7cQhfQ6pp
         Qmwrct1r4zGb2GmUh3Pw8iDPx6hWDuxOItIOLFmdnw/YX/UmmSFVKHt4yHQjz0MAj4cH
         H1CQ==
X-Forwarded-Encrypted: i=2; AJvYcCVv439eoo5hHyYvaJGLnuxofsAWQ3EJnEgXNq8JuHQtc6jkJTIrP6Y2WskXqE2N+yQmpe9gA+QzbmUKuWYsKAsNPNhpPDle8CFC
X-Gm-Message-State: AOJu0YyTBT+wcubqTisujVPBQS3vI5EH+vcI2MlhaC1P6mM9HwRrTO6d
	Nf31bOAD6BsqThCQ9U52Ze8QliiobjrERpqA20jQ6WiK9DcG0AgT/YgM9bsxYwg=
X-Google-Smtp-Source: AGHT+IEG2Svj9Fnx5jTLIEY4MaMdLNO4B1rqpzvkalM/seZJ60gVmTk8rDrDGTCcqKaoVclKICiyqA==
X-Received: by 2002:a25:8804:0:b0:e03:4fbb:9c71 with SMTP id 3f1490d57ef6-e041b079f13mr15833059276.30.1720874880306;
        Sat, 13 Jul 2024 05:48:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1008:b0:e03:37d1:efbd with SMTP id
 3f1490d57ef6-e057923fa67ls4401563276.2.-pod-prod-04-us; Sat, 13 Jul 2024
 05:47:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV7wz/jM7M8wgC2+uar/5ETzUWFgzlu4tLHki5kRb6oQLJOc/erYLDTTpv5jBp09QqA9FbN4aBi/w8L0XZ/da19+TkwmSIenNfZVQRv
X-Received: by 2002:a0d:dcc4:0:b0:640:bcdf:7d6a with SMTP id 00721157ae682-658f09d2b71mr154750217b3.32.1720874879053;
        Sat, 13 Jul 2024 05:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720874879; cv=none;
        d=google.com; s=arc-20160816;
        b=mFs/jNl+Y7yXn4bNfBtgcRQ2NrX4DjjWg4tO8YFYxgDUCq2RgnHeNpZ94DBscYLT6K
         xXZgxZRhoqTiSn4AOWP04XpZktGAKHuFIu3Arrn84x3d2XIcU90MLSXIHZZwkxwYoflX
         0tHBvN/ci4lJ+m2F5xkocMTf7JkD8/yFXFjRy/TsN7q8qqzJs6LLqfEp1EeKfljDe4Yl
         +YkBcHZJjNmFX7ZGxw2VdqY8XcLqmp/y22CeRy6JOD59pqGEK0fyuZQACJNQHpEAlgNn
         TmnwI8mgfH7Bx96QvTQIIWEDXUA/JId2cWDncAgYGBF6wUi2i5WslgW57cBNhRwgXRBy
         RBrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=fCN/fGy7PLWimwXa37mmJ6SUZDS6woRYOv8qy+sFo4g=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=kFtDkE2yQBz3MPEJShmKBlORkDlBdsX9hMDzXq+PtJB32i+gpWFdPHtNZR0TSbqRf3
         GyCbACpoXt4mjOX6JDAGv+xLKfMOnLF2e3KHJfgI4hf5Uas064oTqyqOBCNOu101VsIC
         0C4VfM4Ol6eXRb/dGY3xU83TE/zcnI/h5JTmRR2XDHEemYcDBS3/6HhXHg+v19SK9iPW
         Lhjr0a6YQ+nNTbjSl5AcERJdxd1lleTZQkmiQp0K8FWMz7mkBDRK9sfOGz4idlpFbt0h
         pV09eGYyaPzlXqw0E4fo9H5k58dlnAnSr7KRFfOpaFQz2qkG1rpRAEoxoAKVCIipe8HU
         r+VQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a160b7cc97si117568185a.55.2024.07.13.05.47.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jul 2024 05:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-505-AaLxdSyTOSWbad2I8M0vkg-1; Sat,
 13 Jul 2024 08:47:57 -0400
X-MC-Unique: AaLxdSyTOSWbad2I8M0vkg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 78B6519560A2
	for <blinux-list@gapps.redhat.com>; Sat, 13 Jul 2024 12:47:56 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 69D1B1955E70; Sat, 13 Jul 2024 12:47:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 675241955E80
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 12:47:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DF52119560A2
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 12:47:55 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-665-Z7cq57JGPyWdroVYre3xmQ-1; Sat,
 13 Jul 2024 08:47:53 -0400
X-MC-Unique: Z7cq57JGPyWdroVYre3xmQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WLpCY3NjTz4GkG
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 08:47:53 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WLpCY3BSrzcbc; Sat, 13 Jul 2024 08:47:53 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WLpCY37TRzcbC
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 08:47:53 -0400 (EDT)
Date: Sat, 13 Jul 2024 08:47:53 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: poor internet service makes torrenting necessary
Message-ID: <dd3ed68d-2d57-b4a1-a714-f8d506fd6f0a@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

Where all that can be downloaded using wget or curl or axel is corrupted
files that can't verify once downloaded it gets necessary to use torrents
to get what files are available at any time.  If organizations want to
keep torrents available, they could check for available seeds and when no
more seeds are available as happened with several torrents re-announce and
start seeding again.  I suspect such a three-part process could be
automated by a software package yet to be written and released.  The slint
torrent is no longer alive and accessible coconut torrent is another one
no longer alive.
When I get a torrent downloaded I try seeding for a while afterwards but
do so putting the torrent application in the background.  As I write this
I have a ubuntu desktop 64 seeding in the background since last night.
When I do torrents I use:
transmission-cli -b -D -er -m -U -v torrent
The -er parameter and -v parameters are both very important since they
require encrypted stuff be sent to you and the -v parameter verifies
everything you send out.  That means you get the best quality torrent and
send the best quality torrent.
I'm not sure about the advantages of using -m for port map forwarding and
the -b for blocklists since those may have to be downloaded and installed
separately and I don't know how to do that just yet.  The -D and -U
parameters place no limits on download and upload speeds.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

