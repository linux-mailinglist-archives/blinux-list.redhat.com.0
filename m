Return-Path: <blinux-list+bncBDLMFUWM64DRB2O6TG2QMGQE2Y5OTDQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB0B93E7E8
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 18:18:51 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5d5c8a8a3a5sf244369eaf.3
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 09:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722183530; cv=pass;
        d=google.com; s=arc-20160816;
        b=sI49ACATC6vhdq8ONTvsNQdZ853ix7bEOKTM6puLb7pBW3CreB+UKcYdx5Oy2f65TY
         vqoCnMxGKR/2Xn3QMBHWxOX2nZh679BOEmC6rbi+MMonZJ6OhszVwdZwbHcxg8KCzxr3
         Wuk5f8fcXjwnuBkHR3U7gm3jJL4m/6yCGN5rQ9XF0PtgbhU8/P1xZIWHVmPUPPo2TzBr
         KBHu+uu9WOJkpcOGka5tA6aYoBd0KVNx8Y4hh4UCpzXn6zYjWurjwqYRhP+3Y/iHGO8k
         jA02PJpfRoj9fSTLV0m826F51Okd7gVkzBzic5/y4gu+bNm41RYlC+/DvZ3bSGvqT7Wb
         KNxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=GgJnRQVojGjxAvb7llkDwnxNS2y2H1/OzU3/sorr8iw=;
        fh=6q687DZ3SZCoArah5WF0Wba55z8RQM868gicA00VpT4=;
        b=aCb7Rr/G1JU0di+SwF23serml7eIueTFRxy8RRbv+SfYXSL//YYVc70WSiSniYzDgH
         7MmKjyu9pAO0VPdhXzARaFTcixN0mgLTJyYpc7i+7u7eS5b3aotqdHl3ND7CTM5K80aJ
         Gajh6/FXVUZu3SEr1VW6IWwGQJOoU0Oq8KQkRn5a77emYZlQXGY4gWF275knTpXVzbzE
         5/cqhzyNbxRsAX/VZHssTQsecj0p0b3m+hEnhkFEB4JRLUMoKANJkbsh18bmd0f8HLty
         aQYkK3nPREBCw9NSroCO8fZbCknuWA4tGbJ8B+CZsd98enIFSSU9TGmJiHHavr7gt1L1
         ctyA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722183530; x=1722788330;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:message-id
         :subject:date:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GgJnRQVojGjxAvb7llkDwnxNS2y2H1/OzU3/sorr8iw=;
        b=CRRSAjE28zUHvUurAu/I4l7JlpkjfsAgT4dMnglwgX8ALfZzyoZBOzLxxcjEplWqZq
         3lGaZlVbBeiLZ93lrjKJME4/Sl0gO86T3OOgZalRlHtwnHBAAHITjzy/0n7bGfeWyAa2
         MHHU7g/7+wE6nEj/twUA+eE18sAieLUxhKcT7bN0j8qNcBa5aCucGD3CAKMtuoxSOZJA
         UjHTwnI7CIyo3Ep3ehx45/ABRnG54n2iXtV8nV/E5YSnz7WeKvt12GLwvcMx+ZrsXHrk
         1xCi5WQoLLHQcOXvb2DmsiLHENr1HuIm6m0uXP8Zl4HXCSm7BPwOnMxMxqZHshnvik9K
         qiOA==
X-Forwarded-Encrypted: i=2; AJvYcCWQMRZbksb2o7hPg1BGi5vBYtU9uo/5HY7aBSyH1bs3GjVequKIpXzubIO07zLuChKhaDdE1fnWhKY7i9UP0Y5Qs3q9rNwxnT/i
X-Gm-Message-State: AOJu0YxHAeBrev/AiFfHIpiz27zIHAi5rtnBgaEXZVhE3IbMO1I2rx43
	sTyogcyRcAPtZAMZMeLCULaA0HirXCToicb5850P/Ud1/QHMJfC7P7W6LhHmqUM=
X-Google-Smtp-Source: AGHT+IGsM6RX/hvPVAfDWribNadzGGuGOd3EZxeVhkuKQAIr9iV2hxn3MA0Jash4gqBaorV9RCNblA==
X-Received: by 2002:a4a:a542:0:b0:5c7:b587:40a7 with SMTP id 006d021491bc7-5d5b15373c5mr6303844eaf.1.1722183529469;
        Sun, 28 Jul 2024 09:18:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e8cf:0:b0:5c6:649a:f1ab with SMTP id 006d021491bc7-5d5ae91a7c1ls3429379eaf.2.-pod-prod-08-us;
 Sun, 28 Jul 2024 09:18:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWlo7CA+Cb/Vcx8m9NoYmXaV+v2BM8QlkIL5xhUjJODAM2Dsex/nKj6QltP7eua2phfhG6DhZ0Pejy6e2PRpcrYXPDTuhk/UTJhIWRG
X-Received: by 2002:a05:6830:4982:b0:703:660f:f694 with SMTP id 46e09a7af769-70940cc9c72mr9055465a34.34.1722183528547;
        Sun, 28 Jul 2024 09:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722183528; cv=none;
        d=google.com; s=arc-20160816;
        b=hXovUeVZHt9uKYRGVY3cWsnzvoxkN7lf1NgdCd8rtAve92CiyMvilpfRAoscHL2Fq+
         cDvUu6Cs4q0IvB4S5gpUN7qL7ahnfYFBKBhUWNeDcr9KqfFRq5ILzXRsOvbgEt/IknUi
         nBpcayoZJwKosoKNSdro5EoiIFFU5S0QLGVJ75HK7U4PbT9o0YZsrIzVxV06P+/WJMwi
         jbFqtlagbkjJSyWKLjMTYx9gQC5OjSUopyqRojG7wxJuJTBjlcLy2ab0sRhn4qO3IUds
         8JRfjogfQieIJvr72zW+ndrpxPh5zxW+LBLIo2MDF0h1cluTg8yUWAAqMUr2a31NUGoO
         xdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=jt4xBzfGsqyuDNFK63eGYZH0tohCc+tLGPJuzZhltTU=;
        fh=uwFpAPE7cuwsfRs67Oh4vVwsiabbegG/m38cKguHnXk=;
        b=p41hZZRl1B6gi2ITpmIuoD1MDmkvG+yRCiaCJoe3h7SZF6M7PFveMvGAjGI8IkCceA
         Cpcqiut0qSthAhlPtUp4WkKNiVuKegZp3GY9YDYomFuMiMFNdaKCAsPULyCZvvLuBX5y
         dSrVfed6VdQVVDySQcf1Iqw1AOIB1nsVcPrzLPNGnVed9RVx/8ExKDhBlnFjvAChLQX6
         OdB4fWTdtQzQErGbPYN4XV6ew9rJK+iA06krYyk8OpUmjylwghntkuwSEFEZESzHVy4p
         1s+WGREhlPy87/EOrysXPNL8t20bNtjBJiMd+wXCKK3qU6VCbv6EjDfoemtSMM4BX729
         +foA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rmann0581@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d7446596si865235785a.334.2024.07.28.09.18.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 09:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of rmann0581@gmail.com designates 209.85.219.175 as permitted sender) client-ip=209.85.219.175;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-127-Gs-FXDSDOCu8jr_dsrX6_Q-1; Sun,
 28 Jul 2024 12:18:47 -0400
X-MC-Unique: Gs-FXDSDOCu8jr_dsrX6_Q-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 44BD919560B6
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 16:18:46 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 34D4B1955D42; Sun, 28 Jul 2024 16:18:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 32704195605F
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 16:18:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A94551955F43
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 16:18:45 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-217-uQeQQmIDP1-0-KlQNvFi7g-1; Sun, 28 Jul 2024 12:18:41 -0400
X-MC-Unique: uQeQQmIDP1-0-KlQNvFi7g-1
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e0b2d502c6eso1318076276.0
        for <blinux-list@redhat.com>; Sun, 28 Jul 2024 09:18:41 -0700 (PDT)
X-Received: by 2002:a0d:f746:0:b0:65f:80ed:683e with SMTP id 00721157ae682-67ac8d51744mr57416167b3.2.1722183520983;
        Sun, 28 Jul 2024 09:18:40 -0700 (PDT)
Received: from smtpclient.apple ([38.40.68.7])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-67566dd9275sm16946367b3.12.2024.07.28.09.18.40
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jul 2024 09:18:40 -0700 (PDT)
From: Ryan Mann <rmann0581@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 28 Jul 2024 12:18:30 -0400
Subject: Robo Braille
Message-Id: <489CCE5D-9202-4274-B611-30662E8544B5@gmail.com>
To: Linux discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rmann0581@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rmann0581@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=rmann0581@gmail.com
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

Thank you to whoever suggested Robo Braille. I have scanned several pages and sent the PDF files to Robo Braille. I was able to get Word Documents back in about a minute and open them in Libre Office Writer.  
Ryan Mann
Certified Assistive Technology Instructional Specialist
rmann0581@gmail.com
386-383-5175

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

