Return-Path: <blinux-list+bncBCVPTHE7K4IKDO7PVYDBUBEJC2JVA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEAC866761
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 01:38:58 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-68ffc21d398sf10462476d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 16:38:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708907938; cv=pass;
        d=google.com; s=arc-20160816;
        b=gGgJ4Nu1FzWea4IGOPORUisE4vs++FnO4Gri1p4M5nFbn+vj0fCNYa+9wH8UP27eWi
         wj0jOjWB5/8grVDrzbv9zfy32umqtdzcjVfYtmMBM8XPO2HLLVV/qfXqOGLAchwe2rCN
         AIdIiG9q4dgZnHpRCsbhgt9XmNqpluhsODNLMs5rbVolbztoH4wWgmHvbO7qwoCY+Yy1
         JnbrhUdUSkQQ5F4jYapNDTtq1aRBsQ2/+xwJkgekMSBRe101z/JW9bVDw/NzBUDOnTcU
         kkHlcIWpZj4fqMeAFmeWRbCLyu2N51lDcVVWj+zPn8cuo1o6DUNueNeO5mUSdf+yjI43
         DlRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=zDz1oKl5Yj0lV2pu85jkicx25pZ6AAelcGvnMxrB8oo=;
        fh=vDkTuKP/PJEPJAjsBLUz+L3JidEEr+r7TLT3RTQPLW0=;
        b=uu7EulTv9rdqqR7pCQJrZ5+5u2V04pCzpd9SvSdxABzEEhmw+F9cuf93Iovx94YSXd
         QjQTKbKvsb6qAciX/RsSHY+HBFNi08MAb1tMFPMkGtKrVM8EQR9uvmaxEC8FB9w3yjWe
         /EVguHB0ywYtgJNLqhwf1DLTjKp/m/1jxnQigJM4KOgAZ4dgECHjWiVe6U+iVCM56EXv
         rrXgwjWPUvxEZoBNNOa8yle6BjAN/UI9JLhKvb9rXDHG/HYRVgKLxhqCe39JH2cZYQiD
         4f8vyXp+rPtS4MhQuqYUbzx+IrWdFIYLyRwWYTpNY4CBRZ6uyHTQ8Krdq1T4wktn0PRs
         MFpg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708907938; x=1709512738;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zDz1oKl5Yj0lV2pu85jkicx25pZ6AAelcGvnMxrB8oo=;
        b=JWgOpBCV4tmIVw0iqmezlqJzlZCLXt4oOznzbCISIL8vrJt838OZmLucX7IGCliVzi
         R0sxgx1sq+6oEt7Dxl4EAXpIRCqBnsD7e3yVIK4gbN+prBxnYc9n5co9a5UpWo72icjn
         lCuA4m00HBRxv9oOe5qD2ZPm0SJkPaRWnZbny6GF7MTgFV9QUYXRW//YO97m7YxjWXA5
         zLhaKwhnriEy0eRNzU6PGgM6zgn7j4LGucJ0SQoAtY1kldzPfNvQkXoRLPJCuEuQ3PHS
         Ahbzjx2UkWBRb1661aDq8S89KNrxVZ1lKIuAMpAViP893R9S5wM5qmEYDwhDs7CZqrtG
         gBmA==
X-Forwarded-Encrypted: i=2; AJvYcCXFz/4WE3D/vg/nxdYdog4YLDVmkfviUmhg8jFxWs6/zIusMtUf3RJW/evQU/57xpWuh7KbQoDc0Ry3V4+BOy9g4tVgBX33p713
X-Gm-Message-State: AOJu0YydjVAg3++y29pCYvklLO1ntD+evXHIqlzYyg/1XNbSzZ00lnPc
	mPsYtVHSrkHKZlvIIvwI0P1qCFaKyNlHzG11ykIF8Foth/YnTq4WWwtNhlpBsaM=
X-Google-Smtp-Source: AGHT+IFRRfOkRa8GOzT3ymREJ6U8DWZYjBf4B8zBn3BQjtLJxnnmLZ3I1Gnoh+nz2y+8Wd3Sl+d99w==
X-Received: by 2002:a0c:8b81:0:b0:690:4d7:f5a2 with SMTP id r1-20020a0c8b81000000b0069004d7f5a2mr1777097qva.1.1708907937528;
        Sun, 25 Feb 2024 16:38:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:b65:b0:68e:eeaa:8248 with SMTP id
 ey5-20020a0562140b6500b0068eeeaa8248ls4993586qvb.2.-pod-prod-06-us; Sun, 25
 Feb 2024 16:38:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW1nt1VZ1J30y5t1UmkNw8SzKwEtunKixrNoHXu2S1T4gKNRviXEXv/OpJMINBtd6nvgHvT3l0ed0k2Bm8Otoq3trzI4lXdQinEnRPZ
X-Received: by 2002:a05:6102:5490:b0:471:f51f:ea57 with SMTP id bk16-20020a056102549000b00471f51fea57mr342905vsb.32.1708907936607;
        Sun, 25 Feb 2024 16:38:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708907936; cv=none;
        d=google.com; s=arc-20160816;
        b=zWHYHbVvNHBU7W2VLHKnFt9j+0+INvQwN/m7XS8MxKOAclnLUXrAlTlR8wIyYvEW8u
         lgcEzu23fqmXXgvoHrhiwnN9Xif73MaKhudRNohaEQ3FRcg+RjQzEFugfPP9h5w4FZa/
         t0Y9zARyk7MpabsmamuNA/MUn/VFkPSm307BxDtBo93U24WZyoehnq5JPZESZOX0T/6z
         Z93BD2a0rv4Aa7QAL3W5DSeRLbFI1BKYv+7HlKPoVeHeZL9rYJtGR0FVpNA30zyhrYfR
         PLVcVj92ZhUq9syNcsLCW4uTCSxODR24orZJzcqdLF3jzNY0FqFG7MBE+ogk/kbQfaBP
         Dwdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=zDz1oKl5Yj0lV2pu85jkicx25pZ6AAelcGvnMxrB8oo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=PzwsBkWRe9sbjpwyllZW4Nb50KkL09+zT5MewCqmiXv4cndB7qpiS58y2vC5kqdAJ1
         PBTUFyucKEXXITdAtlcFu1Ii9fyX2N4pnjfZcE2n0j+Jtuuue5c56afpkUOaCKk2wpEw
         qOTjanTlCv3t8alJjm6BfeIb5gOs/FNbJH0LL/T9j9IkLVNEEup5yrwjuX1stYw5s7CR
         MkgJbRF20NQnHcVi1K10AJkA83iDpJlWMxWdhMF2KLRwNUpWx/a0LcNKCtnj6XHrYnY+
         I7uLvDPdxFT8WUFtEUmd6nvsa7sYQqs16QcsGEpJ8bHKbQ7J+7ihRbfZ/P+U5ssFV4mE
         DhYA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id y1-20020a37e301000000b0078769caed44si4020441qki.414.2024.02.25.16.38.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 16:38:56 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-684-qZo1iAVdM6u_PVDauzU2sg-1; Sun,
 25 Feb 2024 19:38:55 -0500
X-MC-Unique: qZo1iAVdM6u_PVDauzU2sg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 221643C0F363
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 00:38:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1E7AA2866; Mon, 26 Feb 2024 00:38:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAF172864
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 00:38:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8744A38041C2
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 00:38:54 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-17-pH5nfhLtOyOqSDNBG_WumQ-1; Sun,
 25 Feb 2024 19:38:52 -0500
X-MC-Unique: pH5nfhLtOyOqSDNBG_WumQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id A6D404050A
	for <blinux-list@redhat.com>; Sun, 25 Feb 2024 19:38:51 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 6C94A100BE8; Sun, 25 Feb 2024 19:38:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 6B3A610007F
	for <blinux-list@redhat.com>; Sun, 25 Feb 2024 19:38:51 -0500 (EST)
Date: Sun, 25 Feb 2024 19:38:51 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: pandoc and the docs format?
Message-ID: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
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

Hi All,
We have pandoc installed here at shellworld, with my using it most often 
to convert epub files into html..then using lynx to make those  text files.
I have a d. o. c. x. file however.
previously I would use basic gmail to convert these, but that door is 
closed now.
Will pandoc change  these into html?
Because the format if not actually a word . doc file, antiword will not 
convert them.
Ideas?
Thanks,
Kare


