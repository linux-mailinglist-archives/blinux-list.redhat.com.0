Return-Path: <blinux-list+bncBDYPVTOXSQEBBSNHZ2VQMGQEAQPBNKA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACDA80AF66
	for <lists+blinux-list@lfdr.de>; Fri,  8 Dec 2023 23:08:11 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4258d7995b5sf5599211cf.0
        for <lists+blinux-list@lfdr.de>; Fri, 08 Dec 2023 14:08:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702073290; cv=pass;
        d=google.com; s=arc-20160816;
        b=lywiN9KBTVgVqIT/n0eV+ZNFTtpvFlxNQBsaaxiLXJw9a9tUc+Suvp/J02Ks4WJsXZ
         6coy3r2wJSE6++WeK30m+IY9GRlfpsfUey/IO5D7oYw5u/i16ZeyjINEycWGyfiHwfJe
         ZYmEuIW1f7aLkNv/MFwaSRGk1Dd+wFV66byJPQzWt5uX8lzeuoD/dQmGWNrpfcFKEHtu
         OvaBzl1i1O9yO8g/l8Wwdhn/RLnkTC3SQJzoYzNQllVKE9KsjTrD5crULNfFAy2hVIMn
         +2G/2enhDQJyUQe40PjOU2dny0H+eSUSvfbnWNvKDiYAshX198f9MJE2NdbGkWUYDHuz
         xX3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=G2LKTnfMcrxq8CZM6umxsm4TxjSFJct2rPZwcX+mHpc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=a24QV/uT4ysGtEK/y4psYIsaUHEHMCFPG1WzsQFfVEfYUVVPr7jYHPv9QnpU2TSkbv
         ZIb6NlBj1RWFxZ/oDaX40Sy9AYnx17+e2kgVhJNPs/E3qVRQhAW5P2GuSuOc+FosvcGF
         9E6Lg8+h/qyFAfGXxwcaJOY3qwnGr4BymNKn3Plxf50RY2w/aW74yZKKZHyN3m4b//6n
         IKRj2GmJJpDiYMI/1BbLs6Lt1T1o2/CbhkBosaht79s2gCrvRdfGS1az436GXdzUyS/B
         49icVR5VvBpsavALVl3JJ8pjbT5yJla1FKl415g5SWbqxwvRl+/cTtAjedtTmpXZ1/41
         cNdw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702073290; x=1702678090;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G2LKTnfMcrxq8CZM6umxsm4TxjSFJct2rPZwcX+mHpc=;
        b=Hm2t97RXfZkrU+FECx+3FMVS6crczBVsszURUd6ie9c/4OhP7z5npz2NOd/lX6ScZZ
         qIud6tqSQ6MkwrbUgKu4WcTpkPe7MuUkOwSNxN7wj5wKy3JSnL22wCWpxor/72T3gt0l
         e4GHqTOqDJeK5jNNzs/nktrbsp6cB5ZPjw10XMIrGvyYs7DkyBbGHY7ZiOzOCUd08v30
         Yc0FrkBbKoq4znXFk4kui8o6KkBhndXTe6PGkWuLiifPCcRBt3qJa/Qh65idktl/aVed
         M9HZt9eL8gKPYdocbXYp8tplNEfeGsk8ZEHgst3PuLQLtkjeOple5QLpC8G3MlANJDCq
         K3sQ==
X-Gm-Message-State: AOJu0YybXOrI+E8HIKS8BNxV3vOloc2+AH9gQoQaYEMGFswiXrIp+TQK
	xTow0tG6s+xViaZRrP7t5GaIvA==
X-Google-Smtp-Source: AGHT+IH3qY6oFjq2Gf7lw0EF3KSic4pTbD2W2JaxRsh1dMb3NmIrPo5OkT20+TAKa8zkfilpbIrF+A==
X-Received: by 2002:ac8:580b:0:b0:421:c3a9:1e4d with SMTP id g11-20020ac8580b000000b00421c3a91e4dmr1691719qtg.3.1702073290346;
        Fri, 08 Dec 2023 14:08:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1751:b0:423:74ab:1ef4 with SMTP id
 l17-20020a05622a175100b0042374ab1ef4ls2794447qtk.0.-pod-prod-07-us; Fri, 08
 Dec 2023 14:08:09 -0800 (PST)
X-Received: by 2002:ac8:7c52:0:b0:425:9ab0:4679 with SMTP id o18-20020ac87c52000000b004259ab04679mr954165qtv.83.1702073289489;
        Fri, 08 Dec 2023 14:08:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702073289; cv=none;
        d=google.com; s=arc-20160816;
        b=IGg8hTDhC3yLsTT/vX7mnNBNku/ipTRzgitG39TGTpGLjOXkbLrjOsMs9X6i1T10+R
         2CfxwpvywemYczvPcU851L0LPoCFWYpeWt4+10j79RfnDFv3VbYCvaMZq5GnwA3K5LqK
         Ok9cKsLfVbRVVPZdbuvrsoq/7sChxY4FqE9P9zDY6kQt02ewAYV0aQV4/4BYtv20xWae
         z/Tfq09HNC1EuJ25FTziopNTIEqdZC+FGXjd5IjPjjXVzE1Za9kafAZZZwGlQPrj2v30
         DQVazJiceRBoEZBKzwOjbsfDuwiB2O4abcHdPpXw1y+ZuLmnIxqcN+EH7vaacw37agNm
         dDCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=+wBHE+o0CEeVRh/EWlhot+NwrfkAuYVIXHT+cKd0Mwg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XADTFC0MxIDDa1dd0xOoI/QSq4YkDOpyqZIZLGa4Sru4unvngbbEdGVBfFxkCvE6Gx
         oHk892uAQDbahTJ7Sgb0EHoj6m/MZXy2uDD8LQB3rHPQQCbOByxoYyeHdttLv5mxqPYc
         sW5tA7SHwPJzxnpKFQAYmQLNLWMXJBPlACLuXBfnghTrWusTiVyU8m4vlZuBUUWed9qG
         YLBx6C0469FOsft2AVm4VmyPJL6FYeuP6btBtqqoi50V/w/Ya7PGqxG37yOu3Q4y8+oJ
         sf7NreisL5sTHBW53BgIW32TBrRBhftbXb2Oo0YU1tYCX7SFKtRJ3z9/cRIN9vxCVjys
         CC4A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id ga26-20020a05622a591a00b004236ece3e88si3415035qtb.217.2023.12.08.14.08.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 14:08:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-377-bL8FVQKgP4q_1Wzub0MrYw-1; Fri, 08 Dec 2023 17:08:08 -0500
X-MC-Unique: bL8FVQKgP4q_1Wzub0MrYw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBF17185A783
	for <blinux-list@gapps.redhat.com>; Fri,  8 Dec 2023 22:08:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B8E20111E404; Fri,  8 Dec 2023 22:08:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B23921121312
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 22:08:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95599101A551
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 22:08:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-637-DSZnmWkKNd2sGzqOBblSlw-1; Fri,
 08 Dec 2023 17:08:05 -0500
X-MC-Unique: DSZnmWkKNd2sGzqOBblSlw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sn4yY4R26zlMH
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 17:08:05 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sn4yY3b9hzcbf; Fri,  8 Dec 2023 17:08:05 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sn4yY3W4Kzcbd
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 17:08:05 -0500 (EST)
Date: Fri, 8 Dec 2023 17:08:05 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: quick links are numbered?
Message-ID: <20948c5f-1d1e-8357-00ff-49205762670c@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 1
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

https://www.newsnationnow.com/
works in lynx however google is responsible for redirection of the page
since its tag manager is prominently displayed at the top of the page.
Google and cloudflair are two major web plagues when they get going.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

