Return-Path: <blinux-list+bncBDYPVTOXSQEBBEXN7KYAMGQE5ELPBQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5BD8A726E
	for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 19:34:13 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-436cb4cce6esf8447461cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 10:34:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713288852; cv=pass;
        d=google.com; s=arc-20160816;
        b=OoeZfALe/G1N8OuxXsppn8yFd19aUZaP/XmYl9CESoZ1vhPlrUNvJPZthoMN4rIuBP
         c5Q6KifpOBZrR19IJJyMfO2B6itwk9qYli1MTEr/pM/m/tQyTv7dgeOqE1IQ1dU4JEJt
         dAbC53R2w+R7tNpQTepjyrONq5aDnRi2DQFFRseQDHyNeBT91I5M6RV+hbwrb2G2QuAK
         sHTj5YTVZWk71CX46/xy95R6uWyKs3iKbG2ElmMwfLlJx6EIKLPkeIhv2NNx1MkdOxaM
         EPK8RKi5Us3SoBnDl9tPA1fSPzMzY2v8hHocnCG+H3dHkKgYPPgxCSpknmYTnis86qEE
         vKqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:cc:to:from
         :date:delivered-to;
        bh=g4D5F+u2EWqfxnrMhqPeRL2sElmTeSbrdypP3q9AU/U=;
        fh=Jie1V9yy5fxLeshfQM41XHS+9vnlV+k/a1tq6sW1i4c=;
        b=aCTT7ER3tEEweKBjaSXs2ihro/u97Xrr9E9jBp2idO2i9h7/BZPBL0Nt9iuI7N0Uzy
         5aU56kbQqa8Wro5hWIJQZSMQANEafsGlKt3sHbtOqPTpKA9sSF7HIVAufNLjgse8CETi
         NNx0pK5lVpLlaE2q75tAbYV/mjE5NcL2bP5jtxWvaLmR+jMlStqQ/UQM4NtVf7NHlP8e
         5mLmGov1CVeAa5+SYhfQlEVzr/uSsHbGxoUkXGQkS/6/WsBVEzuTIjy/lWqK7D5PX/6M
         qxMabIRJCV5WKk7O4t6UskugRxx+H6zH4/m1c9HotWKrymR/zgE3K54RXfVoAIZz47tM
         am+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713288852; x=1713893652;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g4D5F+u2EWqfxnrMhqPeRL2sElmTeSbrdypP3q9AU/U=;
        b=j4AdBdrg1qkJkq2hElBliY5zb90YfydWBLuiyATkarQ+6SNTdJZ7hmtp/dMo7yFPRh
         /w4XRO/K1/zGAU/iFGjsz0/aJIREb+DSOuCalGQ4dcg66CSflrDo6VT+7GzYYK+oS+22
         Y0RuEWFSqkvpGtw/zQfSZC+rq0Nr9dy0hGIGgGWwR7Rj7hxeZtP0uUUBV9tRROyWuInI
         99C7+SAu2vd6rSU3s4bjxp+sxCet1X1Wf3d5vWe/t4TfE8+LLgLVep3El1n3WtE3eZgU
         fSmTRUkWxa9aWGQROaNaumVCtxfcx4N7ChTPqyYiNVGjfr7rDmRTTD5hLYJqcBUf8Ify
         kQmw==
X-Forwarded-Encrypted: i=2; AJvYcCVP9C3DMTaYf6VAdjp+6HGcX1G6jUPB+8dq/Lc77A7Ph5h+z/wvaAcaCAqStFC1q1XvAcPOxOOsOWeAkskA6qFJHE87sN8hTZOS
X-Gm-Message-State: AOJu0YzNPAKLu6jRdpFuG3V4sx6dacQXHwXODOi2UnN22KtMqkGHjNKk
	vFpbNZ0k8EAfo/1R0kjfG3Fl0IeE0p8OJWKnRihnaYZPQ7xHhN5iknTHmZqhsEw=
X-Google-Smtp-Source: AGHT+IHUC1yIQhPdTUtTsWh9zxk+P2rRMOtIK2OXZYTk6yfw/mBiz/AiR55/Ac+y3uUQGtvG5o60xg==
X-Received: by 2002:ac8:590f:0:b0:435:ad6f:3a14 with SMTP id 15-20020ac8590f000000b00435ad6f3a14mr15476888qty.5.1713288851253;
        Tue, 16 Apr 2024 10:34:11 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f4c:0:b0:436:7115:70c1 with SMTP id g12-20020ac87f4c000000b00436711570c1ls877520qtk.1.-pod-prod-08-us;
 Tue, 16 Apr 2024 10:34:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVk9+Te92l1E+Rn0RpwiMFjuhk/mwqUngicyV77nreSsZDLw8rO/OOGHUB2TlzqNlhnvQlccXVieCfLd2LD80LEtoOL1Jf69YL8ddiI
X-Received: by 2002:a05:620a:2620:b0:78b:e239:7ac6 with SMTP id z32-20020a05620a262000b0078be2397ac6mr17015980qko.78.1713288850308;
        Tue, 16 Apr 2024 10:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713288850; cv=none;
        d=google.com; s=arc-20160816;
        b=VQ57CCyqPElwslQ5SpLTXVcE+cVkGW2u0z55N/8gequBTY3Rn86tRg0VvYiQ/4JW7F
         Zgy/PsD1M1HIubQQjc6KPQCChsv+J4T5dX3bRoJwUHJ19L3D6J6TmgEmn/WPIIdtt/ha
         DDuSG+C/I1G+VNYNuT9Mg1Nitd+i7yLhkpuElIC3A4Yqq+5PfGFHnrD/eXfPkOOjs9U/
         e5AaDbF5IFRwiPmAkrS/kj/kcGr8/d0OSQRq+YiUfDQpXN3MlZ9QYX5R12gSkP5O/pM+
         UHyd3XOfulpDw+5QPDzg+QX4Eiyud3tWfveTsvesRwD+pc/iWfVvbxVrUvx0h5r29cvq
         r1Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:delivered-to;
        bh=B0KsyTd6oEfhxfZXDfvYNJAXirkWRXi3fI62cDqtZrc=;
        fh=xROBbd6Xc/A4nro5xHsx7J4hynJjJjS5vyRbzAkJSDo=;
        b=SzuobIxlwBM4+SJ+1mcybDPiCsd4RLrjVlHlQ2C8JQiq9cN1Dvpo6+CmrZ7SvvLpOU
         as+Zmamuqhkr2dm1RI633yOeRR+o9vjtgi2hL2YFQZEi0cnAOVAvUg8xDAmjQwM/tiAH
         ILaH+qamsjWfWyza+LJsiNTleY2XJRZcBE2u/JU0Ldts6mWtluRahC2bUctI9i50XRWI
         WvQij7sFJlf7IxLhjGOlmrsR9sxHeV1GUAjpouiEX30V65CSrlAH/ZN4jZzCL1f1howC
         cSBwzu/UTZDkOpu9jtAGaoolLsPWOtodtK6x6PhmilHP619E2OydfGNf6bKH8ZpUr8Ch
         +lzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id t9-20020a05620a004900b0078d564e0afcsi12944036qkt.361.2024.04.16.10.34.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 10:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-43-jdjvp4aFOSaNzmR8Bx2Tpw-1; Tue, 16 Apr 2024 13:34:08 -0400
X-MC-Unique: jdjvp4aFOSaNzmR8Bx2Tpw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0D6C188E9C3
	for <blinux-list@gapps.redhat.com>; Tue, 16 Apr 2024 17:34:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9D9E52026964; Tue, 16 Apr 2024 17:34:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63F442026962
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 17:34:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A9DD8926E7
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 17:34:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-385-tt3waia7NfmiERpTqzNSuw-1; Tue,
 16 Apr 2024 13:34:05 -0400
X-MC-Unique: tt3waia7NfmiERpTqzNSuw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VJrkL6Ld5z4Lfv;
	Tue, 16 Apr 2024 13:34:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VJrkL5fjrzcbc; Tue, 16 Apr 2024 13:34:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VJrkL5bsvzcbV;
	Tue, 16 Apr 2024 13:34:02 -0400 (EDT)
Date: Tue, 16 Apr 2024 13:34:02 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
cc: slint@freelists.org
Subject: ctorrent downloads script
Message-ID: <2d414821-a6bc-c582-9ba9-d91fb85c2d80@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

This script I find very useful since it checks for torrent availability
before trying to download.
A couple comment lines are in the bottom for no longer available torrents.
This way if those torrents ever become available at a later date with
different names I can adjust those comment lines and put them into the
gtorrent variable.

#!/usr/bin/env bash
# file: ctorrent.sh - script to get torrents
# dependencies - ctorrent
# commented out gtorrent lines show no longer available torrents.
gtorrent=''
echo "torrent availability checks ahead of download."
echo "decoding meta file before downloading."
ctorrent -x $gtorrent
read
echo "checking torrent pieces before download."
ctorrent -c $gtorrent
read
echo "about to try download."
ctorrent -s ~/Downloads -T -X beep -dd $gtorrent


# gtorrent='https://seedbox.slackware.uk/torrents/slint64-15.0-5-iso.torrent'
gtorrent='https://tails.net/torrents/files/tails-amd64-6.1.iso.torrent'

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

