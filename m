Return-Path: <blinux-list+bncBCVPTHE7K4IKRPHPVIDBUBCFC2W3U@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 770B37F2066
	for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 23:31:06 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6d656fd896dsf5513746a34.3
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 14:31:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700519465; x=1701124265;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lLwYO+ZJXwzuJdl51pRzarhAmfQWxeS8kqwCPKhrcLo=;
        b=hbDdzjbOT1XN8glzIdR8ZtiCinrDLCyHejYA/ZwHCN0C3C2CiPqB7iQDXcJtuJOgWh
         VjRqAd2J0Xpxr4tpTmfD3UllT69DyIpGWkGiObt9Id3u0DbT2O6SK3YSkuAMeFJ6/QZo
         ext606VwLPuaFkwTyoKJo0GWAEvb5HC9f+MEN6oOvnydjpTRBMy+TqB2k0KbSXl3qeGe
         0MeFZnvVU0gVOZP2IO1hXFA6154tlNC7Umr7DlfVZ+xYadV6LB7YK4HeHrMpekwdLiM0
         cbHXRaqXx8Nl38o7GICLDnrMG03HFYbISwZ8zM1tiwFW1QHq0y06sGoxXqFZzWnW5PXV
         FvSg==
X-Gm-Message-State: AOJu0YyLpf9+X6UMHkIiYSVi9RPjdXTfjMvzWkZSmFW/tYFnPwPxHn6h
	aE7+FzoJ43zgoVjIY/5rYDxWYQ==
X-Google-Smtp-Source: AGHT+IGdjlR25D7BrfwUy3yGHljp919BB0pAdWjd8KUd9fVLgVDWNGSMbSn7CluCZ3fYhtiUt7Dnlg==
X-Received: by 2002:a9d:61cf:0:b0:6d6:4cf3:d908 with SMTP id h15-20020a9d61cf000000b006d64cf3d908mr9558482otk.33.1700519465032;
        Mon, 20 Nov 2023 14:31:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:14f2:b0:677:fbda:b41f with SMTP id
 k18-20020a05621414f200b00677fbdab41fls2749850qvw.2.-pod-prod-07-us; Mon, 20
 Nov 2023 14:31:04 -0800 (PST)
X-Received: by 2002:a0c:9c4b:0:b0:672:aecf:581a with SMTP id w11-20020a0c9c4b000000b00672aecf581amr8551600qve.47.1700519464144;
        Mon, 20 Nov 2023 14:31:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700519464; cv=none;
        d=google.com; s=arc-20160816;
        b=DyYFKqVVf40uzC+YSXBCKWEThVOu6+jX9GrOKaSNR7aNElJFFIxXYoGNJsByErBUEv
         v5gWzN6JfWTWskOc+O+1hTBaIcjgvQhC3ZHkRmEq4NEWuw6CoTQsY/4NzPQhfzMtjC11
         90IFkO6TofpWtvDiNlPfMP5M/lXDYEI78lt2zGwoIq4ncAouzW/4Rp3COkGXwGdfZNiq
         aOAYhElv4hquGLlvCmuwsDooqd8QtDlg+sc1gW6OElBSc593wo2BSVFKS6QT/Tqhqzg5
         ckUrUovrJak9uGD2kBChTvqYeNui1mXSZa60mgvCBvl2wK3VG/9Ca4o1Bzlj6hSkp1Pg
         wyRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=lLwYO+ZJXwzuJdl51pRzarhAmfQWxeS8kqwCPKhrcLo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=JQ5boX4AfDbK+6unIXxOD+3ss3GolKRZslQ5saVLc+6f72oxovTUBskmA/+nVwaC6W
         ltegl9x/m+hEXhngiYjwHxADqb84SHwzCTLN66aUl9jAnuvxDPUtkrTII3OgBsdY6+kn
         icaJaOT0UlOAY8+ZxvMn52/Q1myWF3YoYOYDLWZH4Vhvi1b7TPy7FvY5c3ldzxl2TcaW
         W82GNwlM+0qnr4CF1q8y9sBK3Mh9tp4wV1x7YLECU04qjRb9PQptxVY47sNMHma8qEPE
         +iyAs89fnJ1i1uuO6X4m4EEep6BwdWlgDoc4XYQB3OenLiuvHKffU7L4lNqegMeFhdXr
         cQoQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id f3-20020ad45403000000b00677f61ecf1bsi7346803qvt.176.2023.11.20.14.31.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 14:31:03 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-541-QVJ2h3OhOsqnfJ0d_b-h4A-1; Mon, 20 Nov 2023 17:31:02 -0500
X-MC-Unique: QVJ2h3OhOsqnfJ0d_b-h4A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F3F2858A9C
	for <blinux-list@gapps.redhat.com>; Mon, 20 Nov 2023 22:31:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4BF7E492BE7; Mon, 20 Nov 2023 22:31:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44EAF492BE0
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 22:31:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A31C811E7B
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 22:31:02 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-607-zrH25cuDM7ihLdMPpPHnbg-1; Mon,
 20 Nov 2023 17:31:00 -0500
X-MC-Unique: zrH25cuDM7ihLdMPpPHnbg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id CAA1C40508
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 17:30:59 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 89F2E1001C0; Mon, 20 Nov 2023 17:30:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 88BCF10009B
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 17:30:59 -0500 (EST)
Date: Mon, 20 Nov 2023 17:30:59 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: google removing basic html access, alternatives?
Message-ID: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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

Hi folks,
I still have direct access to basic html, at least until this morning.
Google is forcing the issue, a change to standard view, requiring a 
captcha to ahem confirm it is me.
I understand some folks use mutt, which is likely installed on shellworld.
Before I  tamper with my main gmail account though, I am considering a 
test, I have a second gmail account I have not reached independently for 
some time.

its set to forward..not solid as I have no access to my actual inbox.
I am told though that mutt may do the trick, but as I only use Linux via 
shellworld, want a safe test, needing information.
Anyone use  mutt that can lend documentation, or a hand?
Thanks,
Kare


