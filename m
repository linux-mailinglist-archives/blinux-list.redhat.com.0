Return-Path: <blinux-list+bncBCVPTHE7K4ILRYUKVMDBUBBKNQU7S@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id B150B7F9100
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 03:45:13 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41cdc2cc0b4sf56624711cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 25 Nov 2023 18:45:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700966712; x=1701571512;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uibwugDGjHvZdwdKH9PNX3nHs2OeLODHjDFIl18i/LI=;
        b=ezizS6zxtADI0+115NITaAMOybSRELH0XoU2zVqXy1CmbMT09VrHBMtLGClAoqEwKt
         01JYPsZwQpmXewTc3q2deDsLbCNykufdvdooahTnflIfFqun6miUhHBF+posf2XW7IV1
         juLk1eNea9h16omG5qw4kWyTCd7wpti7mhsal43At7xrxUJNTf1ndCbX5t/a2DC2yP2k
         GoW4H1rEOV/C/n6ylJYiAjBvp1gdmLy3XYOQXbFvfiXqxyUe00NDsmdOaAYIOPyJLxWG
         DE2kF6HrkV9ybfWWgxP73Rvz93uWUWTXKo7tuUNrxryoV8L3nYH1DdRPmDdBahxnz36z
         taoA==
X-Gm-Message-State: AOJu0YxbpzH2d7sOtq3I2eq9w6saG4AtTe/TXty1GDQGJJaVBx10FyLl
	KgRuwDSlcPSo27o6p3XrADbKlQ==
X-Google-Smtp-Source: AGHT+IH79y0GRt9RjwYgOc2A4wTL3pUgeGNFVJtiemj5mWiIYJxaGg0wozxG5/5mXG6W9xzl7lva+w==
X-Received: by 2002:ac8:7f16:0:b0:423:9a04:a37 with SMTP id f22-20020ac87f16000000b004239a040a37mr10772076qtk.16.1700966712344;
        Sat, 25 Nov 2023 18:45:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1709:b0:423:7e09:49c8 with SMTP id
 h9-20020a05622a170900b004237e0949c8ls2336043qtk.1.-pod-prod-00-us; Sat, 25
 Nov 2023 18:45:11 -0800 (PST)
X-Received: by 2002:ac8:5cce:0:b0:423:9f28:5eb4 with SMTP id s14-20020ac85cce000000b004239f285eb4mr10553475qta.11.1700966710970;
        Sat, 25 Nov 2023 18:45:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700966710; cv=none;
        d=google.com; s=arc-20160816;
        b=qdOGT768HD4PYKq7Qx3bkTR7MuA6UXeaTLiAlKznfJKaNUSt8tfwOzQi2VbraJQtrh
         DiIrabNPASNJCI0ZCI5Im4YAe0iMSB9DlyrbpuTplfuCyjwFN1OpSiV2Y3KpiOm4jDP/
         C/+Rm5yBsKrhSDEPewmJoZVl75OJ9xgbJko/g2T3ZISB6KVyoXvIuGrpYcK7TlTlZ7js
         gcPkaILX+0oyKFIE8BFjeyqWXPWkFb2dkYaZtz/Ck9fumm/VxRq5Z1jVpplRfLt/PeE2
         c96ZtSifVdegDwtWyZh/B+B+26ux/kuv8ewyxeZ8cMbx3wVTaSaP+H2JcqLMHsuUrqly
         DjYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=uibwugDGjHvZdwdKH9PNX3nHs2OeLODHjDFIl18i/LI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Gl2Z/CFZazkK53kn8wiEpujDsLI6lckUB8wUM0hoMVyN/aslsoLeKrKMQo3JzRvUkJ
         5Gf+4sdBybFc1JX2cZcoO99vP4VFmq4ixYV7Knmq6xmqVl8LljPlTPO7PAkiPrcY9ATY
         srltxpQY9J9HZBYcVllldZ1alMYAQY5D4HIJKmA/3hyJbs+d5D+aK8ajS2ztFCXeR17o
         H7j6kH1J4dTkXQofmhwOBnQWiwk7U/TxnCbyV+bHFzE7ftc7N828WY7g+pY8pRwew7Wa
         YNBkLLl195qXQQVBpHvkopDlGyAn+0xICVCI5SxJ1Qffq6Ae/UC5mZKGVvgniqqWJKJj
         Gmiw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id jr4-20020a05622a800400b00423a1508698si2798195qtb.84.2023.11.25.18.45.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 18:45:10 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-93-CbPhXLkXMDSasznIycGxIw-1; Sat, 25 Nov 2023 21:45:09 -0500
X-MC-Unique: CbPhXLkXMDSasznIycGxIw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8022185A780
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 02:45:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B4AEC492BE8; Sun, 26 Nov 2023 02:45:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADFDC492BE7
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 02:45:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F7B485A5B5
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 02:45:08 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-108-_sY7E22AMt-cvnPf66S5pA-1; Sat,
 25 Nov 2023 21:45:05 -0500
X-MC-Unique: _sY7E22AMt-cvnPf66S5pA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id D9A3C40508
	for <blinux-list@redhat.com>; Sat, 25 Nov 2023 21:45:04 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A4A4B1000C0; Sat, 25 Nov 2023 21:45:04 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A348110005B
	for <blinux-list@redhat.com>; Sat, 25 Nov 2023 21:45:04 -0500 (EST)
Date: Sat, 25 Nov 2023 21:45:04 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: interesting email bounce?
Message-ID: <Pine.LNX.4.64.2311252143200.3657901@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
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

Hi everyone,
have any of you posted, only to have your post returned with the list 
email host saying not now?
Best,
Karen


