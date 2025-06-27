Return-Path: <blinux-list+bncBCFJ3VNT5EIBBZ7A7LBAMGQEVYUQ5PQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC11AEBA88
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 16:53:30 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb3654112fsf48513106d6.3
        for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 07:53:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751036009; cv=pass;
        d=google.com; s=arc-20240605;
        b=BUN8zITZzybNB+Bt+iiKSFZlQnTDnM0S9OvJOvX21d8g9MLCbCNb7XjFoPEax5aI7U
         ycpOig3cVP1/Dh5npMlyJ+d1wMo8/vmgH4rqDBKulSdrEUxjjqa0Xofasenzu4gMd0aq
         X2PupTPP9ug1S4TMHj3O4vVzqadfPqjikTZh1ZnLrXWFRhw74EBtR8QS7i4Nluas0Qxv
         f6/wc1KFeP89j9HBtuV/RKEAmDBbIwrR3S943Ue65DJXdcgUHc5VDL8QgxxbEvlGUKZs
         mACJkR8wkZgUaF2miLKWPelwSM0opLIMWrT2lRfKntP3s0CYyVi6YQZ9L2oyrmDMaqrA
         exnw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=P6cgarSwb5/e5NT2QWV93QQ2CPrC9sVJCrAxgCljrJg=;
        fh=44HZcAjLP0tzKG7Ed4eBKHIcRqvIQQbZhpFmMSJUE5o=;
        b=WWPu8sscyzRvRrvwSgK8cW4ZnG+YOnf2iXRsFAG3PvbS0I8U2zdCeQDOB5fO0+IoFK
         EgXexFOMluIRtG5veMHgvKcLpAEXwwa/U1fdj3yAtjBMvxMExiEdhNYLKF7qrT/0qVo7
         DEemJxSnsnT90oNmCkzrcUoeFlntHo7aKvL9vmVEDd+4MNxYQj/aIf4A5iBLLxG2iZ5Q
         l2NagybugGRBfLtFFMESE76qxjE+JsBM3cpYtFflnyhdhsrjf15xy4W5SKAJZ/Dm5s5t
         IvJt1sQEUnto/QnxZgCle8um6+kTKLzucGDGDVps0btvOwSfe0l7zhNB/kDQ4QaHj8yp
         YoOw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=TPcrs5Ie;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751036009; x=1751640809;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P6cgarSwb5/e5NT2QWV93QQ2CPrC9sVJCrAxgCljrJg=;
        b=XnEdHMoEgoXbXlAlvwmd087d91TuHPN/w7jGD+WBe4qOA7H3QJLaq+fQuXSyqwYcdW
         3fwzcsbRrMr8dP6XEKnFDrKaavwAqDCoES97VcJLnqixQL+3h3EEeX5tked7bFCdmq8J
         xdck4lVQJUtIVsIPf5rJDAPddI3UWf586f8zCQkzno65kmMghYnEw2+OsGUgPoRvCZpr
         Yxjtk8z5HrDQhtsqNu9gqsBrdC5fAQPdOdinouyK6C3jxtjYy9fjNKZ50UvdfdR3D/GH
         gMkMVDDFg1hlpUDLUbhNYYiggGWyGR1u7Se0SfgobfvVH8ndYf2ltCfz4N/UlqVchCJP
         /7dQ==
X-Forwarded-Encrypted: i=3; AJvYcCX83nW2lz0u+wnbq72I55RU0d0quhYJzuzZwgSUeum0ZwigrulOnLnqIQK+fBaQa292MxYdzw==@lfdr.de
X-Gm-Message-State: AOJu0Yyn6PKR0XMi6EKIXchSjjBe+q9HkpAtIKS9PJkGxRm1jiW7A7Q3
	FlLvBi6pfPsPEItRoC9tAGBP3Op6nBkoXClC4brhwgaX/EZ/3fujxah1/7LGEd4RWw8=
X-Google-Smtp-Source: AGHT+IE6r+oGOezI+o/3UakJwrTcDDFdt9eKovu4gePXMnHfZ+yeMhcQf5J3J2iUQAtclYeD/aP3ww==
X-Received: by 2002:a05:6214:4407:b0:6fb:4c6d:d4d8 with SMTP id 6a1803df08f44-70000add1f1mr53802786d6.3.1751036008386;
        Fri, 27 Jun 2025 07:53:28 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZeHam3RzU64C5Bz8F5cIYWRoe0ULMxVeWR0rImK8HA0WA==
Received: by 2002:a05:6214:f26:b0:6fa:be38:256 with SMTP id
 6a1803df08f44-6fd74fbc08dls34291296d6.0.-pod-prod-02-us; Fri, 27 Jun 2025
 07:53:27 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCU44dKUAL72fpAR99riDEEbWoTiD/iO6+dx/ikOkTPmLlLJW+ZhHTY6dEgKocvHmY07+s+sqW1Ia/asQw==@gapps.redhat.com
X-Received: by 2002:ad4:5949:0:b0:6fa:bf2f:41ad with SMTP id 6a1803df08f44-70001d639e7mr72838056d6.19.1751036007098;
        Fri, 27 Jun 2025 07:53:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751036007; cv=pass;
        d=google.com; s=arc-20240605;
        b=XDc1lhjRHrzMzG7sG+FA0r6Q3Z7a5/P1KddYisj85KZ6454VZ08H9iaXtKdAf6z/tr
         lDslHDJsoEIxcaIREDzsK+zqy5OL5Vvo1xcztvqdbjzR867x8szqpRFbaGjiBmG+EaX/
         Dc3aL7bzRAnojxKW/Esx2TkUw/xfeiGZ9esL0H0crDYmEMXEkvh8cTCWVCnxvPriDmOB
         BgNO+owTI16pqXDn/Ox/uDmT6AMci+dP9NKAnOA1tGPzpD2ggbJn6NcEqVyUhgY6BaTj
         xtHATy8Xmo5lCCwp2sTKjF/P4jNf+JY6h5alAoKzCBtSQyrqXTjvlWPdP7lQhI7FIA1t
         JFhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:dkim-signature:delivered-to;
        bh=qRUg36BJt4P7xV2Jl+a9/Px4u0Kyuj1TYCwQasL5chk=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=XWGlXAkP/agL3/8a2snHy2VLgPCltpOhNNqlU+MwXwQKL/Ojbl1yt1dq5I0fOgAZ1+
         rIj+5t+hAfhjDnzwIU15faRjMGRvH9cXwIF44sfoGqlsqMfUTaGYwXNBu2TsRmtX7rd/
         IjS/Vk7KXX7Soka+rj3fGdTmV1BFgdwgoTWiZR8yL6RnDAWFyv29GFmYEeK+DO/PijNO
         lsD2XpjIIHkFlKpk53xtyVfak0mF4W4jiZKcf5b1+ESCLo5dkOii+hZdHptqWYL5EHx0
         wt9oHzVbZIDzXt4dciwYYXin2brR9GQ7tLySRk981xMGir6o4keZFvvNhMhX5sDXEdH4
         kbvw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=TPcrs5Ie;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fd77288e82si42355616d6.65.2025.06.27.07.53.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 07:53:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) client-ip=209.85.160.45;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-654-dPlEnFBePrilx82ZUcogsw-1; Fri,
 27 Jun 2025 10:53:24 -0400
X-MC-Unique: dPlEnFBePrilx82ZUcogsw-1
X-Mimecast-MFC-AGG-ID: dPlEnFBePrilx82ZUcogsw_1751036003
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 62B2D195FCD2
	for <blinux-list@gapps.redhat.com>; Fri, 27 Jun 2025 14:53:23 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5DFF518002B7; Fri, 27 Jun 2025 14:53:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5B66A18002B6
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 14:53:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D6DED190FBCC
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 14:53:22 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751036002;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=qRUg36BJt4P7xV2Jl+a9/Px4u0Kyuj1TYCwQasL5chk=;
	b=qNyuf8BNKkzstdOozWTeWOpsW3PeJ4kTUlMQYXLxsuZdfOUsQfS7rts9l6WRzgQxhT2is8
	qckv9rd+Tcj6rztPQuQZh4+9uS06LVu+8qQVdGxF8PADc948WPBaY+SM7NvsNlZ9hQ+LnJ
	Kcs5dt3IXUEHLKKf639aOXiE8gBoncRirePndX7t73NhKuOV5mtaClaZNbg7u0WuDmd1XH
	rsFEVQCkPp/hHHyZqLGjg+0RxPoNzpNv2uk8uECDNhcoV01/Z7xfND/QMyjJenBgABNeiV
	i7bE2sPCTqc+syt1vachdScNvx4zT8ez54QnGAHrerBTmHLL9TCdZ024ptclJw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751036002; a=rsa-sha256;
	cv=none;
	b=KxSyC7tRKBomvkWsku94ifBKfOKRv83OpWMtSuVd0aYoZ7vBJyNKmJC0yN2nN5vDtRMh0m
	5fm/6deXOd3aYf+J+1ojVUfiftiuwpNux4vI04zRQDtEceSdYFy31YYXtqVdMfKz3QYMLg
	FM94kZTQvQAz4mt9MsYOr/6HEENZItFVaDv5d+rzg5a948wdRltEEe3Z17M/eQZN1ezORJ
	zHjuG0D5X4jsScuqj6SnZo3lFNUNfcpVc8rqG2Y3WDxhc9y+PDNOfpvQMYht6Yv5LI5/wT
	ELDr4XUsnkWuWhnUVdec2qJbCXoP+qS8pIOWTn0c3Oa3M3+U8+/JTD1ql3kckA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TPcrs5Ie;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com
 [209.85.160.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-283-yA5b3Ez6MYW27oABJTMWBQ-1; Fri, 27 Jun 2025 10:53:20 -0400
X-MC-Unique: yA5b3Ez6MYW27oABJTMWBQ-1
X-Mimecast-MFC-AGG-ID: yA5b3Ez6MYW27oABJTMWBQ_1751035999
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2efc0ed41efso705370fac.1
        for <blinux-list@redhat.com>; Fri, 27 Jun 2025 07:53:19 -0700 (PDT)
X-Gm-Gg: ASbGncttjTdwJjh9bWsXqkAoXw9Pkr4O/Hw0+AjbySwrIwrVRncVEGqxmrvA4ayVTv4
	HcjtYCZDbOZCFoW0Y3T7Y9ox9/F9RsGD8IDPtxRAnuwcuG0wEy8FznPB0aoeFpTkIC++UHHrlbq
	pyU/uGJnZd6gLy2cEk+6ugt/KHQXUpohlVKolbp+3Z+pZH8LfuWtnSYImqxku/R+ZG5Is4nHmNM
	KyzEOfv5ob8ASj33QDmYdijj/hB266NfgWjDehCC/U9dMlWR3Xe0agzGjBSGrsZGw5/MclXAfSR
	b+g9tp29T/AO0k5Sk/jBe4cUGbB9XIh6DudJL/haWtMRIYxrbBZOg8ZIknyJNZt3ygHUOfbgj1D
	jsGTj5krAorcMbppC+pE=
X-Received: by 2002:a05:6870:9d1b:b0:2e8:ee67:731d with SMTP id 586e51a60fabf-2efed78ceedmr1942028fac.37.1751035998907;
        Fri, 27 Jun 2025 07:53:18 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d19d:88f3:1d2b:1a30:accb:96da])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2efd4ea5d9fsm898682fac.10.2025.06.27.07.53.18
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Jun 2025 07:53:18 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: external drive
Message-Id: <8F2A944E-6737-433F-8667-35747E4CBD48@gmail.com>
Date: Fri, 27 Jun 2025 09:53:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Ichszve099pgwU-7RiVU-tMXDJOqI0juVlfj2aCWMk4_1751035999
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmail.com header.s=20230601 header.b=TPcrs5Ie;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com
 dmarc=pass fromdomain=gmail.com);       spf=pass (google.com: domain of
 dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

On my arch computer, using caja, when connecting an external drive, it mounts.
I am able to access files and directories.
But sometimes I will get a notice, 'cannot mount drive.  The drive is already mounted.'
What might cause that to happen?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

