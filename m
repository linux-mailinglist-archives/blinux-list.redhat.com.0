Return-Path: <blinux-list+bncBCFJ3VNT5EIBBPUV2LAQMGQEZ2UQNGQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 10128AC4253
	for <lists+blinux-list@lfdr.de>; Mon, 26 May 2025 17:37:38 +0200 (CEST)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b26db9af463sf2497155a12.2
        for <lists+blinux-list@lfdr.de>; Mon, 26 May 2025 08:37:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748273856; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ah6RmGyM2S5C8Ufwa77wKhLKi7yOpHH1r3Umoled9tdcpRQovQQCXIYwSzW7j7XMtI
         gduBhV2upZ6AnFFcWtN8nablknXJOsJGFzrVrZ5iscKaxZTcwrG6LlHYKJXOdq20G6rs
         qRG91A/NTGXKkl4zjEprxw0vjZ7MtzXXc8vG8LbC3KVlSSv2rE3M+ZKkMRMLVOVIWV75
         BzGOEUp7xsQg3sVIJqDgTyNDYLBkQ1Sr94Z9gs8lt7ALIe5QZIu2TB0m48XYOHPsY1Mm
         FtwXZifuatmnGj94GP0hr3tCVq/JlfNJRCQXP9fKZ+EcFm75cKOe9NYBYiGmIcMXINcV
         +FBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=/3iOsVW4gbZvUrVNsKLb7LJtEJVPbnjESaSg1UAEGXA=;
        fh=OtKB+zffj4SLEhCMEbckiG5npxUH+3CraQ+AhWG7QIw=;
        b=TCKc4enOAwyOZjALNqHc/dVaOTc+S2SlZCItkMN5pDRzIV5oU2jnVdPNykv4F/HKA8
         hzUEitvhE3XM9c/5vO1sUdWdjtk5wRnq5z0X6K/crvQVitRxHJLVmUhSxZVIRhokVKlH
         6f7ar4ng1Tozql9TGbBwG5IB6R35Gwcn34X8nJKiqzqLbNRefO7No6unx+3LRXAYJJ5M
         QVRWNitPN5ozfcnuYEmZ/EuzSuP8I1C9Kd71tZDiAtSjXiy3zwzURiqJW64IFu/2lUhD
         RymLifk/WVhD1Ls4xL60e7bmKyH4FURp8asR4Em9a6M4pMfiQ3aO7gh4FCKefBZgTMnf
         BUeQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.179 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748273856; x=1748878656;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/3iOsVW4gbZvUrVNsKLb7LJtEJVPbnjESaSg1UAEGXA=;
        b=Gz2+lG4qKFAYzbL7VvyHkTUFZeY6UGUHvwUp5M/H9JFRqa7v8iEZDeqxeokNAHVCP1
         lU3zQhVTHjR3SMi2auqSNl60uIxsL8VV4n+wvoEQiShuvQUst+0cBy55xE7i9xtmSBV4
         hz2yHwCvmtgPeG7yml2+FomQ0t+YTa1dDOHjXcFChjrUOSQmPPGXrS84TzjVLBDh5Wu7
         IsIXLHxsqm4YwTAVlbXhwj64WNhUxlv8b9jvZDo4zn+uYoInO10tSphiUL40cEY0on92
         pGnazT0xLUzxntHvqDoPU0iNjVyrWo41E5TIQIEOR9B755KLAK4kABjQyBAssk9qE3Zn
         Ehaw==
X-Forwarded-Encrypted: i=2; AJvYcCWv2CVf6BdZBG2SE5RA5jv+ZGJ0B3nU5++zEx0SrorG3CjRgbNLq+kixiYjOxQaDA5k27XJ6w==@lfdr.de
X-Gm-Message-State: AOJu0YzY3P5e5G0t2PFOlTF0f1QguNmkM33DPH24nJW2r6DGAybxxMiv
	oJ0pMEO2txmnpEWApXs1tVdpYacleHsGMX1MTb7vuINp6/3bhliwN2z/6owYfRVWASM=
X-Google-Smtp-Source: AGHT+IERQLIpiRe5B9mKLH2QGwquggsi55nb8blUj6cZzhNOMdox2wUswBC9yx+9VzIjfWO3enU3GQ==
X-Received: by 2002:a17:90b:35d2:b0:310:d980:7a84 with SMTP id 98e67ed59e1d1-31110d923d5mr13724738a91.19.1748273855891;
        Mon, 26 May 2025 08:37:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcmCVAydvitVj4EwP4z1/2qUzn3F9aVOwi+dqqpfScD/Q==
Received: by 2002:a17:90a:fd0d:b0:30e:7f0e:d2bc with SMTP id
 98e67ed59e1d1-311083b609bls1937028a91.0.-pod-prod-08-us; Mon, 26 May 2025
 08:37:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCZdblwdPDPhZ7bKKqM7HPNW/AFf1H8ShIsyEN079Hv3qeA2nINBF6Eh3wZjGgr3KK2ZiugHaj78/kIA==@gapps.redhat.com
X-Received: by 2002:a17:90a:d44d:b0:30e:3338:8c0e with SMTP id 98e67ed59e1d1-31111d3ec1emr15401587a91.27.1748273854109;
        Mon, 26 May 2025 08:37:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748273854; cv=none;
        d=google.com; s=arc-20240605;
        b=a2tZM9DjbakAmwWVnY2U1K/Y/r3EfdlmdpiIunSBRu+ZKGWH71fVVnnG895+9JN8Av
         8v9Rqd7D56oTzKJUOV1r/AYyTaLUghDe1BMBLJgQmC4Drz73YH0n4L23IAqll3xR4xWw
         zReF1pjw8QCEcEuYVToDfjcd3be1iGidACQONoFP+vyWPiIH9SIBf/haxmknX+N6LWsJ
         aTW45QoztrHZ9bK+eTjY4yke0WApvXvnljyuxa/M14G7h3620w6mBEnUJKtKFIRXttix
         aMCGhzMOOLkRegMtmfFkdlZBTgMXyBP6+8WgnoK3N2S7fUn/EfQeDvUU5OJwqPHer2ta
         rDIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=Pg07bPpxAVynpRaKgzviR9+KGItATrKgftJWU+V27RE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VIO4gmpppBqYVUdmDJl+UoeZd55yRYKvIGGWb3w6EtqY77OM6Fm7an1Vm3m4DNoNC6
         M8fn/pZ3f8ivtqO56jZ4ERG+Kok+/vMViX3D8Sz6xJ6jxv3IsJIFqVyxNOlSou4KtokZ
         6l9oE/A7NUxdQxRuhUBPkL33uMhPZqabXcmsCvUqUxo5+nI9dGtVwp95yTdAtOFd3YOx
         EKJPCocBqlq8JBDYgBoG11pbWyhLgWsF4LXyYhOV2kgAkkm66TSo7QkQcir+sEZejJu5
         7QrnhesCIrJ9OmYpN5Ou9fdp60Z1iAtB5HjsbG3URSLHguGybqzvx3OzCiQfpkqc7HnF
         ZJ6g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.179 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-311a3f2eb96si187194a91.116.2025.05.26.08.37.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 08:37:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.128.179 as permitted sender) client-ip=209.85.128.179;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-qrKeFZoBPZCsj6DGU46p9g-1; Mon,
 26 May 2025 11:37:32 -0400
X-MC-Unique: qrKeFZoBPZCsj6DGU46p9g-1
X-Mimecast-MFC-AGG-ID: qrKeFZoBPZCsj6DGU46p9g_1748273851
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 44965180035E
	for <blinux-list@gapps.redhat.com>; Mon, 26 May 2025 15:37:31 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 403091800371; Mon, 26 May 2025 15:37:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3D15918004A7
	for <blinux-list@redhat.com>; Mon, 26 May 2025 15:37:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0FFC19560B5
	for <blinux-list@redhat.com>; Mon, 26 May 2025 15:37:29 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com
 [209.85.128.179]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-211-EdqHLp9YMmKn5r-o-nqFjQ-1; Mon, 26 May 2025 11:37:27 -0400
X-MC-Unique: EdqHLp9YMmKn5r-o-nqFjQ-1
X-Mimecast-MFC-AGG-ID: EdqHLp9YMmKn5r-o-nqFjQ_1748273847
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6ff4faf858cso15238397b3.2
        for <blinux-list@redhat.com>; Mon, 26 May 2025 08:37:27 -0700 (PDT)
X-Gm-Gg: ASbGncubQ2lPYaqA/oWdQ8bip8wcJW+/AFCBEg/Ec4x50LhhYsU4BJQXFC8N0nw7md6
	6Bd4sPZgjh77305iOh1JFxaYkFINZQDcs6PKv+UgGi4qYymJt0CFFEUy3wrF0cRtYfGKsUOjlXl
	PT7INZUocweIl6Lib9dVPyccjl91lPlfgHWF8BPS7Akt+rYGSk1n+DFCDAXSpCwoUq0TXY1NAdE
	a9GgFDPzrpXwwzosmbB7jYKFH2irexhbqzksUmujdCUCK9sD8gaMB1AuCfr1i9GG+e9CXwolV0A
	hxl0QgxOi6Cflb1OxcMZy8IyEmKqCsCNvKx9L50vbdOuXtIspvTxlmXHO2ovlDrKMdLzRjS+vwI
	wweOj1SQ=
X-Received: by 2002:a05:690c:691:b0:70e:15e7:59bf with SMTP id 00721157ae682-70e2da02058mr106560047b3.15.1748273846788;
        Mon, 26 May 2025 08:37:26 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d197:b92:886f:ad60:d559:f719])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70e70759b0bsm1129137b3.11.2025.05.26.08.37.26
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 May 2025 08:37:26 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: pi 400 jacks
Message-Id: <43F65162-F8CB-4545-B208-D0A9AB9B22D8@gmail.com>
Date: Mon, 26 May 2025 10:37:22 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: v5_5LsLiBgUqxoDCVccXFWB2R8rDZypPeuIpxxxr7cs_1748273847
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nn1Op6itpGL6B90rltJszBkVoaw0s93xuOr9pEkOYvI_1748273851
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.128.179 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I have a pi 400 which I had not used in a while.
I cannot remember what all the ports are for.
I know where the ethernet port is.  Might someone refresh my memory?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

