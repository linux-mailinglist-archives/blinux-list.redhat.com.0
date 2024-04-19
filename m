Return-Path: <blinux-list+bncBCVPTHE7K4IIXXELWEDBUBBCBI2PU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E028AB729
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 00:19:57 +0200 (CEST)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3c6041cd048sf2625647b6e.2
        for <lists+blinux-list@lfdr.de>; Fri, 19 Apr 2024 15:19:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713565196; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQ32z9d7W9WXjsqd36m5hqEw6U2ujU8iBQqTA8sve7U+qEtBGguIrbecD+pY5zwj/o
         L6vo5mBUne4HnqzXiaxFw8kmLfsAuK7W3+epuH5ebgnrx5TjyJJy4iFRGX3ojUhlZi5W
         h0U7T1BQMQ4l1aE/T1BjxYi9dKOQQX4rKU4W76Tuuhsih+2DOsMhNf384TgaSOhUYqij
         /8OFQweRL+BctC4iQKmtUpm8vQ7mPqa4vSm4B8CKGPAGA859dBlyDqzGiRki9OMcI+Kv
         Cw4wfxqn1I5J5U5z1paWnp2bEQW+xY1VfeN+YB44TxnQ4RHAmBTqIbZQexiCBlZ08E7Y
         9kKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=bidCAACbTWtQxr4ccMNz1604gTLaBnpNz1rqEN+84L8=;
        fh=no5iJ+6pVWBIm8ZMluvwcajWXbdFf3r8CTDDmOLzZAM=;
        b=urAVuqrE2ryX83DlMkvPK98OjoXHqFwMYEx8SZfoQNbHCCkx5GAa3fEYlnetPlTYPH
         B1v/WmEKPpP29kdFZv5d799aL9xgM9QjmVXUJwRHC+866PlEDAfNgKs+yYVxW9a8gevL
         BEZLV9hbWdEfGJZHz8atcLrEP30yWZivqybdU9p34GnK8Su7vTeitOyTkHaw3rc/60bl
         ysdyAwIivY7QldVgb9CLQhbEZsQ8ZGvpG4Ia8sGlZewcsucPMPu0vlnTxKnZFy4+2avD
         rgVukFam3CJGND/tMXnQb8m/9gYcfh/tCBfTK51RiDzA+yrdEpZ3YJhvEAWvrVrcjxOo
         ShfQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713565196; x=1714169996;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bidCAACbTWtQxr4ccMNz1604gTLaBnpNz1rqEN+84L8=;
        b=IkF3GpcShhDnHYa7tZCosiZP+J3+dCoTgpIbtrAxJFxx/VWsQRW3Ip9aTtM9ew5PXe
         Ls9gdw22rgcEzQE7bjU4Q7WSzThj871KeC0dT/at+6uQ1HXUT1EFOHJRd5gXmbS4XcDs
         E0MNvKjjHTbMQBxm+4oKQnBtG2ueRKG25TfrXANjYsR2SQFr0w6zZv/dl/C+/wBj5/Aq
         iMq8ZePyB7DtrcuxmoSWP0Ei2+fCBX5RQMlw48fd/gyR1wqZACsnafW9SZYRujoKHzz/
         Jlz6EVzJI8p8TjJP+WJnI9ySuwgaiq7HeP/eKS6yUoQfeiz+R5nuxbCu3ySgpkV7PkWh
         XYDg==
X-Forwarded-Encrypted: i=2; AJvYcCUd9U/+5xUNqld+V8OyowSTv6iJMV5pWeQAT+doQEjwuyihiER2VVQQ4Yy3vjK7q6b7+uwT0oiDnYGYLooTLOzjpR8+pv0Ahxna
X-Gm-Message-State: AOJu0Ywzj2wGjSxzjqKBWrsPf6wO+8MiQ3Ly8s1Fm8UEacsZADgfxyHe
	aAMgfnNtNZYLLpQAyOnJK8oi78fshBKCj9is0K4WCcJcY0W21YLbK9Ln+3KrmqA=
X-Google-Smtp-Source: AGHT+IFnleJ3GFb2Anqz6pPnEdSBabIONALVBbQpeab/e45YFIhDwhRGNp0T5kD5HHxsH46mQf1f2Q==
X-Received: by 2002:aca:2201:0:b0:3c7:2a49:978a with SMTP id b1-20020aca2201000000b003c72a49978amr3783147oic.35.1713565195844;
        Fri, 19 Apr 2024 15:19:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:198c:b0:438:e018:18e2 with SMTP id
 d75a77b69052e-438e0181a28ls9882541cf.1.-pod-prod-07-us; Fri, 19 Apr 2024
 15:19:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWAkXCBXX/r3U2UiJ4Ok8VFAtEhr1ywudepwvtJ8UaqDJwu2EIKeTiTBbeMQPpdImvFQ+78Jdhmfo+C98EF/Ed8VqvbuoIprYLx+5UB
X-Received: by 2002:a05:622a:178f:b0:436:7ba0:3786 with SMTP id s15-20020a05622a178f00b004367ba03786mr2999378qtk.29.1713565194708;
        Fri, 19 Apr 2024 15:19:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713565194; cv=none;
        d=google.com; s=arc-20160816;
        b=lZjD+njKDFE4KmB+MazrLY+ubdgHPaCvayuz2mo+PjwmerCMykjgEo0OnG3GIAH86I
         J1THq1lK+V3U8IK8JhXxtFRfe85FvRvmi/tWlDP8O8Yts1QD0s8nHrqXem8trLnaesK8
         u6h/IaeYVQ7poAphU8zjUXr1Kk3Tnxq8giSi8Wu5gscD2mal9iYii1Z0PNEeQMucZHfO
         2bxGObl7e9bzjx3l2XS/oDTjQ7m17T0Zz1LWWbHTdKQOLp1B8GRuaZ7FUmu3P3S7Hlwu
         kJTSOVquZVrA9U4+eVq2iTAM8P3xCi503yg6wb9YhwCOSLJkBK/NH7c3IpC5FDu+Z2Cn
         BSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=bidCAACbTWtQxr4ccMNz1604gTLaBnpNz1rqEN+84L8=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=nkSh83pP1RGmHrtWAV+RAF52BnOpaI3OdMuHoGtcr4zen8qAPuplQ91NavZR8oo6nL
         K06Eisb8yJR7Z87PKBVIwC0qjR+iRy53P1oLrpUMGYJuWHFsNo9kh8qrY3H0EpHCe8wG
         XmZOYpcpDx3o9x3zhKf8HZ9uZZ64Xp4b3FgjTsLDXk/qBe6P1YjXW/S9mkJtcRnyNEE4
         1Yc4ecbiqWd1rb5JiyfQiFZg1Bn2fUy/X1K5w4PCtXRlVG7X8dIV1iT2OZtWvQOliKMT
         VEPd2HG/fVqbrawVLL7LoVYAwUUydclq6+H+frtvCIg+fW/YgbKkFQfH7IxoBlZ1Gg5E
         hOSw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id v2-20020ac85782000000b0043744be9d32si2036284qta.714.2024.04.19.15.19.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 15:19:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-177-ZXdXDhwbOO2r8fWqGKYR7A-1; Fri,
 19 Apr 2024 18:19:53 -0400
X-MC-Unique: ZXdXDhwbOO2r8fWqGKYR7A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3AAE3C1E9CB
	for <blinux-list@gapps.redhat.com>; Fri, 19 Apr 2024 22:19:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CFEA443FB1; Fri, 19 Apr 2024 22:19:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 965993543A
	for <blinux-list@redhat.com>; Fri, 19 Apr 2024 22:19:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4B401C031A3
	for <blinux-list@redhat.com>; Fri, 19 Apr 2024 22:19:51 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-575-w_BygbuJNN-bSF3px71fcw-1; Fri,
 19 Apr 2024 18:19:49 -0400
X-MC-Unique: w_BygbuJNN-bSF3px71fcw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 7C8DB4050A
	for <blinux-list@redhat.com>; Fri, 19 Apr 2024 18:19:48 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 4627E1001BD; Fri, 19 Apr 2024 18:19:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 45D6E100091
	for <blinux-list@redhat.com>; Fri, 19 Apr 2024 18:19:48 -0400 (EDT)
Date: Fri, 19 Apr 2024 18:19:48 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: browser diagnostic tools like trace?
Message-ID: <Pine.LNX.4.64.2404191814380.1812186@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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
I was sent a event link where I could buy tickets by a Canadian sight loss 
organization.
The link, fails in everything to which I have access, links the chain, 
lynx the cat, even elinks. The latter presents two items branded as google 
fonts.
Anyway, I have promised to provide a diagnostic file, I can do this in l y 
n X with the trace command.
I am wondering though if either of the other browsers provide something 
comparative?
I might run it through the free testing tools at the w3c site..if those 
are still there.
Want to educate about Linux as I share though.
ideas?
Karen


