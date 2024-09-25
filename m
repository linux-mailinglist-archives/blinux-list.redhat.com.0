Return-Path: <blinux-list+bncBDYPVTOXSQEBB46B2K3QMGQE4D4ZBOQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EFB9869EE
	for <lists+blinux-list@lfdr.de>; Thu, 26 Sep 2024 01:47:01 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6c5135456cbsf7040266d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2024 16:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727308020; cv=pass;
        d=google.com; s=arc-20240605;
        b=DkV8IqSAQei4vhHbb57gWZxFICcal43Yim/K5/yPpQVu41ayG1IP6+L2d4lkLlyhg7
         8qVDEjMeOZAADSyGz16URT2m4YCEnDCt9PR4oScOJKMrVKlvkNV96MBh+JJj6JqU4lbN
         Zn1Won7FebsW7Zx7F3Zz6BFYKOWdG07R+5K+i8eWIdMCp18mNKzujwqtoU8sCxVQEBaj
         UTdzGWVVGXzU4ujE7FzTZ0lxEsE9jCGXiANyiE8Ai2AtCIPBWcM/aHDeN0pwKiFNxIDg
         gmNX59TIJ+Wm5jDePlikjEqRC3CCJ8k5LLTzyOs7Prswf0xXibFFJ8XbR72JjsMSztxH
         ZcWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:message-id
         :subject:date:mime-version:from:delivered-to;
        bh=a2rpIKo28Mj265lYUwEZF5BtzJNGjagtmZjc25EWtWY=;
        fh=jns0H+qrJvLBPoeAZhMcSU+0fHIdp0ncRFXCEJPs77g=;
        b=LL6BFgaOyv+2h4AnbKQhJeznKMpNtlNhz0cdunAgDeRn2n/tNibn/BwxQj/nWVbD8W
         jilXYPOaP2r2n5qMkAbVU0MjmSPb1zDwqqwFcQB5b6n6BqYI/RRAkTXeKALrI9MMH8Zc
         kYIuQ40JNNnD541+DpgJoL6IxgeLo1hs561WDemUYPjJY87btmXOApEnxTqFILlzXjRd
         XpvGXgo+XgvZWF2/ok43NQTOzQ+yh2AKzqrfV8TqFzFWj90+qMAmynuWX+B1Q/tVeRME
         4T7V6k6qfXEHOJfwwK2NC94THomrsHt+YD0bWoU8B+OyBLK9fjU16ZOao30vpp28cp9g
         iRCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727308020; x=1727912820;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a2rpIKo28Mj265lYUwEZF5BtzJNGjagtmZjc25EWtWY=;
        b=Y/e2J6hwdBASgZ4pI7n1u68sc+6cb+xYey0CX2SvKyToPCD5Ocmg2c6eVaUlxflpP9
         fkV/B6iU3npaKel+liLHF2haKLOaTRlcSMMrOAejyGM095IShPaYtgFtv4PV4Vvs6ACq
         3zwbKq6JhGkIz7xQVEOkjT3wFb1Dg6Kz/TcVDqWdADVrXlkqeMO/zUv1zhO4U7Bd5a1h
         927zbNP2NC9PpRRGJIiOYJOlb+G6iXSY8UpmXv4kw/I/A9SnhoxQSO78MGzzuWZGoO6C
         /5YDVHffoNIhhrvt+QehP+2efNIhhpSYV1TnC/3d7I/Ce6O0CvthVM2Y0+xmn8uO1msy
         GFhg==
X-Forwarded-Encrypted: i=2; AJvYcCXVzVjbcMZJyKTTaaqE3uTtbAN9PDLWwHJcEMPkL6cLjGXwEu3a7cks9XbEhcCzOINW01/UQA==@lfdr.de
X-Gm-Message-State: AOJu0YyuHMuDgtuog+Ky3hv+bTnVYEaIjf8PBTeZE7rlArff/l/5mvOi
	d8J3RdOTO6wI6HVw11NUy2Zpbc0xojAFPOhxZLAKES9G/MniZ/3if2B9g2JzZpM=
X-Google-Smtp-Source: AGHT+IHihgxG+fVDmCkUQoqYVX966WLhLtKFzwD7IuFOb6hiKP9M1qHXfWx3mVk/orVgkzUxZXorsA==
X-Received: by 2002:a05:6214:2b90:b0:6c5:e6c:d5f8 with SMTP id 6a1803df08f44-6cb1dd8dc12mr46743356d6.19.1727308019828;
        Wed, 25 Sep 2024 16:46:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:dc8:b0:6b7:8ba3:a39a with SMTP id
 6a1803df08f44-6cb2f10c142ls9423016d6.1.-pod-prod-04-us; Wed, 25 Sep 2024
 16:46:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJW7HBzC0CDbFd+XCC5kW5WYhfrDmV4hW2Ofif8v+j7FXqBHPFaPk+ItR2M43tqRc81b6/Bra6jop8uw==@gapps.redhat.com
X-Received: by 2002:a05:6214:5508:b0:6c3:643d:3b with SMTP id 6a1803df08f44-6cb1de2784cmr56019286d6.42.1727308018830;
        Wed, 25 Sep 2024 16:46:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727308018; cv=none;
        d=google.com; s=arc-20240605;
        b=A6HNhlj2xjfVYAZsF1NZxydtQL3j2jlP3yd/aTVtZYr0QXL6xe1ecQuOMMvsC23vJo
         n6oc51pUbonAFzQfz0DGWVc58nL4D/TCGs0vOgWCOS+3slUWmdhyzNuQv33GPfX9GTo1
         gNKQdC8Q99s0eaexRWUQIylBROV6vZESL8ADKnOKmyTs5FD4cwxIu+jz95L+T67jXfpF
         ASpkVonVPoO43tij2I5FD5DSBHFTdesjcKx0BV89t/vbfoU5gCkWHqm0H+m1AXr7B+Xr
         57WOUEOpEBAGwB/1FBckRXUkmS7W8EHGmsD7ZlQ0NPm3bt1QzvTAKZBYFA02VH1Idm2H
         X15A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=6eR8OEpuvRfxsZBF3+ZAkM3YpVNAww+RgO8kMSVkPOU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=WE7Zoue85hibV8uf9jqxb0on4cEdzho32lybkOyqqgenNb8yOttIYVeFocH+MaDdMs
         dyoZqSnUNvE6QM96Mku5MgxTysELh6TCwUN+NMgBCeA0Y8pEM5MptQVuQ3Q7vKNGqhwk
         KhDAE+NEqHoq0ps2Qhz2fu33tUkd/lo9SHz5RTxyp9CQ4TyCJs9HC24P8/cy3lFWlqw/
         2XqLB1Dq61LO3lyAf7Bb5clMmjIFeDRvPn2hsfLu/9/hDOXLSkomzO3Z09sOdlAapxPM
         8YN4lrgU6v3VRrr8VZJ8SQPOZT/HuL7GgTbtu0lV2AD5CTDmYN+R20StG2R3vBj0kasM
         lMcA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6cb0f4e7f2asi50126246d6.131.2024.09.25.16.46.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 16:46:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-611-XMSZJ2MbMn6GDPbutMkCEQ-1; Wed,
 25 Sep 2024 19:46:57 -0400
X-MC-Unique: XMSZJ2MbMn6GDPbutMkCEQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 93BB3193E8F3
	for <blinux-list@gapps.redhat.com>; Wed, 25 Sep 2024 23:46:56 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9118419560AD; Wed, 25 Sep 2024 23:46:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8ED2719560AA
	for <blinux-list@redhat.com>; Wed, 25 Sep 2024 23:46:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0BD0E197730B
	for <blinux-list@redhat.com>; Wed, 25 Sep 2024 23:46:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-691-OjgrlYv2NZ6DOk4Ekok4Fg-1; Wed,
 25 Sep 2024 19:46:54 -0400
X-MC-Unique: OjgrlYv2NZ6DOk4Ekok4Fg-1
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4XDYKn4mygz4CVs
	for <blinux-list@redhat.com>; Wed, 25 Sep 2024 19:46:53 -0400 (EDT)
From: Jude DaShiell <jdashiel@panix.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 25 Sep 2024 19:46:43 -0400
Subject: tdsr on chromebook
Message-Id: <C90DC7AF-FD31-44BE-8F14-A0F036720A38@panix.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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


I finally got to read tdsr's readme.md without chromevox and with tdsr and =
all is explained once you do that read!  Thanks much for writing this scree=
n reader since it is really needed for blind linux users using chromebooks =
and I can well understand how useful it will be to replace voiceover in ter=
minal environments for the apple computers.  tdsr ends up hiding the chrome=
book terminal and for any already used to reading with espeakup once you le=
arn the keyboard commands it makes chromebooks in linux environments so muc=
h more useable.  I put tdsr in /usr/local/bin earlier and next time I start=
 it up I'll run with chromevox to get me to the penguin link then turn chro=
mevox off and hit enter for the penguin link and then try running tdsr and =
see if tdsr comes up talking again.  Since chromevox is turned off no more =
bitching about too much output to announce.  I can likely exit by powering =
the chromebook off then start in again.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

