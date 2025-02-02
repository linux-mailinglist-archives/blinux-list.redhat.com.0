Return-Path: <blinux-list+bncBDGI3AUYYYCBBNWB766AMGQEIGW7ISI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 006ABA25011
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2025 22:16:40 +0100 (CET)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6ee0af16dsf645052785a.3
        for <lists+blinux-list@lfdr.de>; Sun, 02 Feb 2025 13:16:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738531000; cv=pass;
        d=google.com; s=arc-20240605;
        b=ObPSscJeFMeq5LMr7lGKsoQyhUUeSmWGBgiQ5rjmU2c3As2kpJoWQ6ma5y9POwvCMf
         P1m8vb4T9giuwzXeWG+z2WiSPx8SS5IvRDnoIeSZL/DoajWRLxge7qtJ2URO2OhjuDPv
         Rps6lBCWXlVxzeASVlEZSHgJkbZekO/WfdGjmBzpCLNCu0FdXorsSSSEMK4EirqAR/dM
         cJPgwy/EVHXCcWTGHeQ5flyAwLpkhl64CHxQp1YMnLrthJO4EigotxsQz6RNQ6gzZbrT
         VbjlclJxI2SCJLssvvyHugGXE+5Risn7T2CWBWo7dhNEgjLmzE0vjQAzYidRgxf2L23D
         /0eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=YIjJXO66xGGufw0hk8A1Q3/D1sv0MSq4ge/BHMyEdck=;
        fh=xg7JhYRTphQ4sH1SqJBATjlBR515tZYFahWZQX9i/Ss=;
        b=TBOzTn1IKvqmuJOeYgf/aRRIrNCbQxUorJQO5ADU2xYqFu62kDWMjEaND0DS64qUnp
         bMbjtb91VVbZrev3rJbQsNhls/OcrolVR8pOWEhaDzy1JLJY+nzQ24QLtbP+FKYAfsHI
         H4UbpEi9oN4W5P8tfZUdqx5dz558ZZqQTyiw45jn5BYH/4YtAISgFq4iOF9+WwFBevaF
         pkGssM5ZK55JOowop6tZidzUM2aIz6c0xG6pnf4Mv+QF+SAYGoza1JFi7gjKmwrQMnKl
         3Doi8MBEyuJJ/ZGKvTGEhmvYOZrMRZLXehNbFNeVvblUUeRNRMLNhc72OG3tG0/qgiQv
         uacQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738531000; x=1739135800;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YIjJXO66xGGufw0hk8A1Q3/D1sv0MSq4ge/BHMyEdck=;
        b=je2kdv8s/dZPaodvYPYRp2gQlaGvjFGgC/pGIDE38zxHzvyfnUHdWLXUTWMPTbtYkH
         bDzI7EMjKooGmVBqzKdjpiPeu67gdGtsHxl0jiHWCiF5PcE/KXMCrivpvcgRha0An0eV
         JR/UIu+N8VhmI5kQBv4pyr6VNbSffxlhtYitdjkUG5ROsM1GiQ5Hswo+hxSdJ5O8b62+
         8WpF0okDQZ6oeSJb/Z+obKEX5WxMTOfW+PyhZncS3SMbYEIdfpsa+iaG0K26m30QVa67
         uPIAT2FLcRAG+QNS1D1Q+Uy5MiCiWsdLxErAvs9sldGonMicjJjpQP9v6BlqkvXUbGiK
         xGpA==
X-Forwarded-Encrypted: i=2; AJvYcCVfGT8EHvls8LOl+/h2AmeOQJHwI8XOWKIDC0PGZWSAZpdn+hnpCCLnt/1pIxUIwXXfJ1BArw==@lfdr.de
X-Gm-Message-State: AOJu0YxqyrDDyEJvys+HmL3P7521lb/Si9jI3uU0iYLGeMds+bZs9Uoa
	CB0DqPT+Kqzq1zp09NUsorika08IOCSTNPX4UXwJvFin7rIH5GUmJKTW5m579JE=
X-Google-Smtp-Source: AGHT+IH68T4W/kGmsv6YQur2SNS3GjTrbzP2EmA9KKN/pszklsm6f416sK/GV+z/XG/CInNgF8af8Q==
X-Received: by 2002:a05:620a:3949:b0:7b6:d870:ca2d with SMTP id af79cd13be357-7bffcce22eamr3004891285a.13.1738530999080;
        Sun, 02 Feb 2025 13:16:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4f81:0:b0:46d:dee4:45d6 with SMTP id d75a77b69052e-46fdcfb9bd5ls17220211cf.2.-pod-prod-03-us;
 Sun, 02 Feb 2025 13:16:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUFq1ozOG7unNDVyC2hyCQr+KGYx31Y3WJKiqDSsAl70BmJl8PQi78K8r5FjIPUgGD8XOv9+EZqm7m9Qg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1a11:b0:466:96ef:90c with SMTP id d75a77b69052e-46fd0b68b65mr300734341cf.41.1738530997921;
        Sun, 02 Feb 2025 13:16:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738530997; cv=none;
        d=google.com; s=arc-20240605;
        b=HyajHSQaAfHkASbQZ2YPqAoLwAVr53CnmqaBUW1/G+qO19i4Kxm56hORcDm4jTUHc/
         5h5IRq270Q4cYDy6dLjXia/xZyc4F8r4SGgc+EmDv1118/NS3tk7IB/vqEaZRxcmLA2V
         uFrIIHbJ+boAurOpcp2pqGa585czuvOKFaCCPDgGszBLYkBFs20ritDCHvW9dZ/IlkOM
         j1DgBDKKVZdXoq6F8C0cERSMGfBzSHg6iq6aB7Xg0ql8aGCLzEcWGLgNtNRaK6ChRTmR
         xbW+ju0V+VLmrOz+32+V8+t7VDcxMDrZdZ5E6Cc7RxClOgA+66dfr6UGx/OGv6Gt6wCo
         uahA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=tH93CV4QYIgGslLbi+/qa3KOHqljNJx02LxNhgC2Eao=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Df4P+PPuB1bmxZY2wl2Z5WrS4LKGLf9Wlq935iadyqtJ/A9jK0UHK6rxEN33ZlwLHF
         DdDES6BDtVB8w+75BlVzPCjeMizlsRjGGEUu2EYXlWaaC2RamqUIUXyYRyUevSnVIVbj
         YTb/gLm9fIPZpPdkHsKTBMexiPOOVQycNuAkHr+M1N1aj90FgZc8rIUjVEdD3hf2l6SL
         8dTR2VyHlFMamIYBcNqy9ad3rK3YDiEsN1/aI23SmNt1bGUJaRcl+ScCLZc+h7uWBvUJ
         4SZBJ7zzHiEaO47hiib1j1Wcxh1ZnrgFpaJ8x3PKhzK6L4F7USXWieYxTuSTWp62J8DF
         0z/A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf1d2e94si85793661cf.421.2025.02.02.13.16.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 13:16:37 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-272-CwScG6n2P2yvflEjkLh-tQ-1; Sun,
 02 Feb 2025 16:16:36 -0500
X-MC-Unique: CwScG6n2P2yvflEjkLh-tQ-1
X-Mimecast-MFC-AGG-ID: CwScG6n2P2yvflEjkLh-tQ
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CC16319560B0
	for <blinux-list@gapps.redhat.com>; Sun,  2 Feb 2025 21:16:35 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C6C5119560AB; Sun,  2 Feb 2025 21:16:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C44CC19560AA
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 21:16:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5138C1956080
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 21:16:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-590-JahY7eNaMhGwN5QX3mMW9Q-1; Sun,
 02 Feb 2025 16:16:33 -0500
X-MC-Unique: JahY7eNaMhGwN5QX3mMW9Q-1
X-Mimecast-MFC-AGG-ID: JahY7eNaMhGwN5QX3mMW9Q
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YmMrJ4p5Sz4Wtf
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 16:16:32 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YmMrJ4564zfYm; Sun,  2 Feb 2025 16:16:32 -0500 (EST)
Date: Sun, 2 Feb 2025 16:16:32 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: ever onward with firefox
Message-ID: <Z5_gsJcWqpCA0JmM@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 2-ZAQKWvbCzXoLXafcoJldo7FdLjIUV5ReIbRCm7UvU_1738530992
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: f12P9wyM01OJiDmXVKO4MFJJW2z4nbRJuDrKmhLFeec_1738530995
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


I was finally able to fill out and submit a web form using firefox.
Needless to say, this led to more problems and questions.

Could someone explain:

1. How to edit a form text input field in firefox? Or at least how to wipe it clean and start over if editing existing text isn't possible.
2. How to edit a textarea input field in firefox? And maybe clear it and import a text file into the textarea?

Thanks for your patience.
Also, is there a blind firefox users group I should be pestering with these questions?

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

