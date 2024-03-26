Return-Path: <blinux-list+bncBCVPTHE7K4IPR74IWADBUBADUYX2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFB088B866
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 04:24:42 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-430ac211fbbsf56091731cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 25 Mar 2024 20:24:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711423481; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVg7TAA0nPGj7m+Qnjzx05+QA2dEz1ntaiF9xwv2D+DXE8EujCtaSv5yu54SZnmlK4
         C7tvj1/vWU25tjWSeAA7jKGHWNKqOfx5yLrs2gT9JPUTXCphvrNTnMZjqZRJx3GaMCOt
         K1c1K3KOeODHGQpG8cSLjTIgrWZbkJY5i0bJJ3Nl7qEwJuUbY++cX40bMXDwtJAs1vmL
         WPc+8gn8BtD8e3M8ExiSySZtSALbZFGZaKYS+LNxB5vex33ZI2MBt7S+1Go8FTuFQRMl
         zqNtI4s+StB8fDAmUDXkx42w4nyapUg4Aqzh2Ju3js/FyyuSESwO7hegkGrt7dyjJeLp
         HG1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=qgWPb8bHXZo8Yq5Etw9z6GK7nwAuzQg/T8TPSh9koys=;
        fh=G3Ip3Xg3RbAyUGGPAzISfsKEpLz2Zg6faEw1ONNe9yU=;
        b=iP3k11wmXy8nzaWVdaRgE5aJFlWBtVancdU3reirdXm0jz6WTwvZNMej8V2zSDNq48
         My4Ig0mpRLoScLYjAKzTpL+GliukYvn/Vh05Xf80nGd7uj7iS7hDQDpEzsN5X2TzAJMP
         0ibbh3KdsDoI6JHRMSal7j/FZXyerM+Vocspav1rRaSIBRonBkj6eeeSe3MRKvzMihSL
         Z5TmfeMGe4/iEYLkQLfDBJRSiUYRPMROxCnv6Fav/XYOH3wHPTigLEKMjPa869qQHYDU
         tPKfPPEZbw93+Wa9ZW9Tu32Ijs9vT5gsI/UsCEaDY18m24JaG0B0aiKfjdf/jyGH94bu
         pmIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711423481; x=1712028281;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qgWPb8bHXZo8Yq5Etw9z6GK7nwAuzQg/T8TPSh9koys=;
        b=Y6K5fYZ40gJetRjwRq/ZSHHrAYHVZdTImVPq3GbY8FUU5g/mzanVJWsYrC3EXq9gEf
         gQ7H8x7PVIC3NvLI4jIGBK1iK2aImxIMp9x1RP+5eYj6pgie7z9CWGug9/ljFNmMrAFy
         +TYu5yZCXLsNcPZz0cmmqn2xOHhAnA31FJdiTv/en2msKU1QuqelEuXpfLmnZ2eNGkuD
         Gj4M4AunGhfy6vYkRDGrSW7dL+sB71kv4+Gn5fCNiqmYul/fCJ4i57Az4mR++bOQyD7Y
         X/qBcHAz2QSP9KliYwN8clb/BUpPviCBI3jlyp/X5GqkWTHGAJ5gzrZmXZqqnJ4Wuty9
         VObw==
X-Forwarded-Encrypted: i=2; AJvYcCWysOnv8xWr3CuoXoL2mbxUHl9nyUzJAG9J/183nCJDgPXc4BQS0j6Gd6oxrkmQZ8oYt73GZoEeKlqfkmc1xPAVirF5yNu5Gjmy
X-Gm-Message-State: AOJu0YxHMJ6pTJ8xDLC8yvnfnw3/7y4gRAUKLKMvO9HaNLotgr5a5fAH
	LkLabtJq5hXZpm4Rk6I5KnMUm+kWdKGjJ+8cx9mZggiFIbSXeHeBLWdt9QGHh1o=
X-Google-Smtp-Source: AGHT+IGOkWyrH3CLiqYJiv2SE9cubpyI1f4Oj+YGbAMxr3vgdYa/p6jttmaHyO3+L+R2zP3GHi1++w==
X-Received: by 2002:ac8:59d5:0:b0:431:5aa0:95ec with SMTP id f21-20020ac859d5000000b004315aa095ecmr1784872qtf.54.1711423480442;
        Mon, 25 Mar 2024 20:24:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:51c8:0:b0:431:3419:79d3 with SMTP id d8-20020ac851c8000000b00431341979d3ls3599398qtn.0.-pod-prod-01-us;
 Mon, 25 Mar 2024 20:24:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWFPCg1T4p5sYHFpFnWzRSpfODp0CHwa1Ywrc3Jf0j/7uqppVqaAIZkP/VDaUnXXqaws/7vuhA0rFN6rgOvw3H15gqgCyJo6GqJOO3a
X-Received: by 2002:a05:620a:15ba:b0:789:e951:41c5 with SMTP id f26-20020a05620a15ba00b00789e95141c5mr1632964qkk.34.1711423479591;
        Mon, 25 Mar 2024 20:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711423479; cv=none;
        d=google.com; s=arc-20160816;
        b=o6P1ze44MnHTNg+H14lWK0Tfhhy0+XGmUrCBBDwgAI/upSWqV2tVVy300mvb9BFTMm
         IAkUaZVR2dIx5oNW6Okd7qWp1cHclobRXsyBNU/uLIY9Ck3FiVSuS4EnfygJYqsiZBb1
         5m6kcJgzWla257cnAB8kkUMQhMM0wPAmdgcxqdzRjsTQpj5oQ021x8kIHTGicdpx61BQ
         pIL5Pgf3l9erq57tf0z0MiH+gNDz/Dvz3AVA6OBC/NgYXuEr1l8K0KnetMQdGjyUYGZz
         XAizI70/c56kL3IraQkqBFVVEIvVAm9pJo4F682sGUh9OeRHIGHQM4Gf78xr84Dq7376
         vs2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=qgWPb8bHXZo8Yq5Etw9z6GK7nwAuzQg/T8TPSh9koys=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=YWsJnAufTV8jm3xApXbr468nn9DF/nWunfKob+zV/bfjf/+ySeB3IUfibd6OpxHm4f
         VT+UnJzjrU+LeuLGRJ4o8zjH7xTW04dWVSHuaOHzc9DP1UR+acdI9RZr1t5y2/ZTosIW
         D2IgmK1OXUujLiQt/Vr+agLh0RdOKxSnT0DfVDsZtck69O34LpLL4crPUiMKFhKoLz42
         IIz8d8j2BhI7Xl5n6+qLwyfOqv8GMoQw188po/lQNAFIHuR1GlfvGvToVKkXpybnts1t
         ZHLBhQEtOUOizg3Exy8KgKjpLlMqu/Z/dxJYK41erd3Mj/vd3nOuqz6nwT9uHTiPqNv5
         pzNg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ou9-20020a05620a620900b00789efbbbf18si6530647qkn.245.2024.03.25.20.24.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 20:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-466-H0mubFFRNZmHkp5W1kAuoA-1; Mon,
 25 Mar 2024 23:24:30 -0400
X-MC-Unique: H0mubFFRNZmHkp5W1kAuoA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67D873C0D856
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 03:24:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 644963C22; Tue, 26 Mar 2024 03:24:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AE003C20
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 03:24:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D151E800265
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 03:24:29 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-362-SE9f6XqMNSmcLEtqFgwEfw-1; Mon,
 25 Mar 2024 23:24:26 -0400
X-MC-Unique: SE9f6XqMNSmcLEtqFgwEfw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 408FA40508
	for <blinux-list@redhat.com>; Mon, 25 Mar 2024 23:22:35 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 26ACD1001B4; Mon, 25 Mar 2024 23:22:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 2648C10008B
	for <blinux-list@redhat.com>; Mon, 25 Mar 2024 23:22:35 -0400 (EDT)
Date: Mon, 25 Mar 2024 23:22:35 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: is there a command line  Reddit tool?
Message-ID: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
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
previously, reddit worked well,  at least for reading posts, in both lynx 
the cat and links the chain.
Now, even elinks produces a blocked error message, my guess is that the 
reddit community is not aware of Linux and these tools for access.Wondered 
though if another tool already exists that might be a part of a shell 
infrastructure?
With appreciation,
Karen


