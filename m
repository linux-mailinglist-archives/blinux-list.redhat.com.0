Return-Path: <blinux-list+bncBCVPTHE7K4IMZH7SXQDBUBHOLXPGA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E374A23AE5
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 09:54:38 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8e6046f0fsf27349066d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 00:54:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738313677; cv=pass;
        d=google.com; s=arc-20240605;
        b=HMpTtT/dO7hNou/xg4nzBvPUk235UhWyNwsygaoMcauL3nKKmbTJPq3fUcRtBQdWM2
         AF3h7/vqwr1dvNsfen+4toUUu98GKGlGDXdmNOhkeJSe+jZ1ewKRzaOJxo3zttORqY+I
         rMPI0Yc/2mLz4f8mMj7E44dH5h6oVL6qBwAvh8Zv7al/SHE0IuVJSGmfJzzV4P54kqfj
         l9AQ7/NXzkOZDMxm97bXEjZaQsuZACp8BmiELgW1Ff6Imb3kbyFZyMJuddxC0X42F922
         /pNDZh4+j1rBWi6CT6nCWzCBLjx7A4uYuigtn/o66l1taZqYPcPaxA/28sUBjFW0XBX4
         6ZuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=1HCQV0ezdoy9Ru0ahJgO0kouxbddu6fZvlFQoEqQneU=;
        fh=tQX/WsjbRRbMtOJT8ybjbflFgJQQ0yIcpFRIXNbgJwM=;
        b=CH6cvC6WnAQ+tu7ZIfIwDCtmKrCrPyxnAotu8Of++dS/eYVMChJVCLyRr2+sU+wOA8
         ibESJSdGxQFlAiSsLWSP7ZehZPrDExEoDODyC0bu6ouJaTYXui4hwiQ3hgwzIw+XcSMj
         kktBD6zPJo6kzoITgf66uNovMY8HYIde3AfdtbrL/kLGFtE88aQKryG/3/FGqc7k0RK0
         WmI3Jf0ICJ3OPgb+t8ycr+rZv7jn9thjLe7QM7fjkPunELNESo6LN9s7sEkiL5OUUpz/
         W6z5BbCJsBBdjUBCUM3pj/dF5znOizyxY+eSFZQRzyh94DsWfKy6EeI9d6g7sQ6QG2NJ
         NNog==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738313677; x=1738918477;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1HCQV0ezdoy9Ru0ahJgO0kouxbddu6fZvlFQoEqQneU=;
        b=cjyuHwmYb8a4fDXXGyPQf3yuYrdxH9DCSUvhhqBZjZJxRth+3Uh1AHdxw4CU9IkfOe
         AeKVnlfIZKnNTTmOEag9411kcvkA6zuJy6kLKrcOVq6KdOPfobWy04iFk5kAy9UpKv+r
         9dPQXYbUfkmVEAFXlgGqVlG3YQndFg4AHn4sgI/kIu/pE7tTsMHKR8AdidQaD7ge/rZn
         ljoBlE9xrgd/WHxj9kT//oecXQ9+6XDVDMgXtwR63DdB4bApgl9XzKNLNWOmz+Um2azO
         szJ0ler7dy+yeA6JlDMEi1Nb18MbpfLI2iqkkcd8lnpsTW0p0gjmzbrRBnsMpJ7LhICm
         R2Ug==
X-Forwarded-Encrypted: i=2; AJvYcCVaw87xNQEtY+YQ6wb+nsHp6NA6r/cOhaJk/ok+BhN0Pjuk4UinBvE8cbtPI+74lQi54tzTrA==@lfdr.de
X-Gm-Message-State: AOJu0Yxedfy/2URDLj81uZI995/ZyH3/cQodfgm0vcS6FJ6FnIro2e3P
	XGUtdd4vMD0oaPvzT4+OXyuZxPSgZBW9P2kTYw06f84v0Mbpf7FwyL5L9PXCE2M=
X-Google-Smtp-Source: AGHT+IHKJswhqzxKsJYIVQPnw9C3TqJy+mPpYNVxAa2jW7HsG5+KkW5uZer7C08nE5sHb51WhnAGSg==
X-Received: by 2002:a05:6214:5194:b0:6e1:a253:b32e with SMTP id 6a1803df08f44-6e243c15cc3mr159119506d6.18.1738313677019;
        Fri, 31 Jan 2025 00:54:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:3c98:b0:6d8:f050:cdf6 with SMTP id
 6a1803df08f44-6e251e9c5dals18713666d6.1.-pod-prod-07-us; Fri, 31 Jan 2025
 00:54:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWp8gLwXbhx0Za01KsE3ibzbU+mMONeZ9bGST1gD9gJu466Y18tb1x7BWxUwEmObvXiXxlpFSUfb+LaXQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:190f:b0:7b6:de8e:da27 with SMTP id af79cd13be357-7bffcd73612mr1426035185a.44.1738313674402;
        Fri, 31 Jan 2025 00:54:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738313674; cv=none;
        d=google.com; s=arc-20240605;
        b=NYBsvatpmhcxIqU0cK17WMKe/M4ze+qkU4NcaET2jLE8v5Pt1dmojnP1t6bTwrTNDW
         +CX2c+ZB6pmMSnetRklheWKoq1OgweNgQt8K7LfCq9ZeuKaCNvfcqHqVYOjCzOBHW0bF
         gOZTNLVSeB7ikx69IN5DenCw3oITT9Qd1yZoo1LbzBZRGVogWAdcvkFb1CQYA0IdXBPy
         Vk8Cv5OnEs94x+Pojbi8pORQjiZJqBQUggacQxKJhLdmdjqU/o/DIQvLl6mbBaAlGC5S
         7j8ZmyhtdpbLYlHFA+0i9L2lG7a/iw3oF1B5+AbtocUvtTG9Cf8scABVdT0vw0h58/ns
         JP+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=1HCQV0ezdoy9Ru0ahJgO0kouxbddu6fZvlFQoEqQneU=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=VY7uNoZLAdq/BoMTj9hiUNNcAPO2YNXPicatP31gnNfcfJ+UrLIO2GZ5B5evT2/uAs
         GE/DwPeLkywPxH+s11YgA3RZwD3dLCdI3R34ChhKtr1F+afy4MX3oYUrAVZOO0RR8SXJ
         ax5C1izjrwjevf4zHC7xzRbF/v+RKm4DUqeyTqwS4HrtXh3iCLF8KzBqbk6H+ce3bJ1G
         E59p+3ZdG01Qa88ePOumCbz59gUQPKsfOeqwzWm+ejRKTGPrGnMZk9d5HcEnVBatwpzv
         HsPGar498KNVcmRa0GE84dt662sr2Yeot0gIGBbF4j4re6f1PR0lhQyZtUrVMBryJHHn
         IHTQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a903e33si342812385a.252.2025.01.31.00.54.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 00:54:34 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-29-2KUfim1AOdKJrurjiJMB8Q-1; Fri,
 31 Jan 2025 03:54:32 -0500
X-MC-Unique: 2KUfim1AOdKJrurjiJMB8Q-1
X-Mimecast-MFC-AGG-ID: 2KUfim1AOdKJrurjiJMB8Q
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C14641801F10
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 08:54:31 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BC4C81954B24; Fri, 31 Jan 2025 08:54:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B992419560A3
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 08:54:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 35C8619560AB
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 08:54:31 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-353-jtP0PCaAMZulNhLHoeJSFw-1;
 Fri, 31 Jan 2025 03:54:28 -0500
X-MC-Unique: jtP0PCaAMZulNhLHoeJSFw-1
X-Mimecast-MFC-AGG-ID: jtP0PCaAMZulNhLHoeJSFw
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B2D0540508;
	Fri, 31 Jan 2025 03:54:27 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 6EF911000C0; Fri, 31 Jan 2025 03:54:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 6BDF710008A;
	Fri, 31 Jan 2025 03:54:27 -0500 (EST)
Date: Fri, 31 Jan 2025 03:54:27 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: more gui obfuscation
In-Reply-To: <Z5xIBQ5itO0f071J@panix.com>
Message-ID: <Pine.LNX.4.64.2501310351040.2129007@users.shellworld.net>
References: <Z5xIBQ5itO0f071J@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: egqvh4KTaVLCl_QdlKLIWypOwbBOzFDtO52k3N6cHYw_1738313667
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QmmvMOI2JfqbWv-hTmfArG5rhyFaknH6tAjZD8VKpEs_1738313671
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

Hi  Rudy,
Does that include specific YouTube links?
For example, I *very* often get a YouTube link sent via a discussion.
Even better, say I am reading an article at rolling stone, something I can 
do quite well with lynx.  there is a YouTube link in the article, and so 
forth.
Can you, as you indicate, scrape and play those?
Thanks,
Karen



