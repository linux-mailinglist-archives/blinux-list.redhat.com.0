Return-Path: <blinux-list+bncBCVPTHE7K4IKNAW6XMDBUBHI4Z5OK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EAAA00425
	for <lists+blinux-list@lfdr.de>; Fri,  3 Jan 2025 07:18:16 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6f2515eb3sf1238489985a.0
        for <lists+blinux-list@lfdr.de>; Thu, 02 Jan 2025 22:18:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735885095; cv=pass;
        d=google.com; s=arc-20240605;
        b=lcxbVerSYlfcMBNPdob5Aaotpy7hEJoFsVREBUkle9egF34LRgRCd0yu3SvnximIqQ
         9p6OAr0IwPpFGgOdZ8ZxmdbXWkGPKR8RmOMMcKCfj2mmor+W7vuek8Z5FdDWyp/L1jwk
         Fk2awJ+FdN9uYNIHiLrKP1C97RUgc4UTx2v7cbiymaHdhUrVILWjE3Nuv4lEaGnAE4MY
         sSgONQ7msd+Mk7RyEq8iYnkjlGh6Db6uo8d7HVNFoE80HydbkRdgVYWkTh+rpRf4eSj2
         Mx1SCBU/ZZIu7O0ZtNLkY1BAQv2+c7r1ZoSmtYXsM+0++IPjDS6QXO8P6RXZ1zarsZcg
         aF/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=wt4JBbRr6Iyd7z9I4aw1rOIav3GNwPxFshSqYTJB+BY=;
        fh=MrF8Kkc2LKSpR6NzBAjCaAAKPWenZMqxP9uiywhwGxM=;
        b=c38/4d8fhOvYI+rG4tWJFn3JOMEz6UVwzDtnoIvSeQn0q5zStDpLL941hFWThaj5oS
         sDRnfB23hApvhvPmCNFjVJqM5OvOtuUIUMmzJNkiiQSDggy4TV4iR5VZGuBtEe7b2KSv
         rLpAjGjMDVWUiHlMkXcDXbGQTHphaIAksokDfdxJjvF35p0h5VCMdjFy9PUJGo9xfgIH
         3koxOooA8W3mK3IpGRRxZF+n/FYzaRctk0E4WHtYUeGcu/pD9OIWV7+z4GFgCfDuZTeM
         6mvPMVXr24rLeDo3ZbTERz35fhbAopqNBhkpcBIIIAe4/LTieVImmp+dN7Fpp9ei0wDj
         zY+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735885095; x=1736489895;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wt4JBbRr6Iyd7z9I4aw1rOIav3GNwPxFshSqYTJB+BY=;
        b=JPlPWOFOnMbMubhmSmslygqD7yqQlFbOjYI9FYyvlkLkxZlgSPREUBNkY7MxQ34inK
         gpQBpZbORaaJyFff2VXgIl4mqr/ZvJlSlL+XGWyKdNe/6dAcBIg+88a/KViiGBVYpMjH
         lZzSVDqNU15MowRNobt3EozcSMa01dt6pnw7qGsF/C320qvj+g1kgsM+veH4E5XwdabJ
         VeOq9ozFJVN2GYkzeWI+8la+dt7072dmKDl84xe7i9f9siGwYPaUKmgatupD3772HLYd
         56anBAA60JNGtr/XijxlNC4ZpdGr0BoDS3uxcCXkueE2UHZwDRutFSMzcr08xRrUJJxP
         9jKw==
X-Forwarded-Encrypted: i=2; AJvYcCVO3RyI7hd4xdt01lJRdK6r2uvLylV9B3su8LtO9+T5O7S2wg6fQw6PpzYxWdiu1FZMzEoNfw==@lfdr.de
X-Gm-Message-State: AOJu0Yy3LDEe3WLifLj91S1zsnogKP7cWu9d3grsUWumSHsx2P30Tr8A
	4eUNcMs7p2xWdbV/b2aSLayzI2Z4CuUYLoSmLIJ962SUv+IZLqjlBegA17SW6n0=
X-Google-Smtp-Source: AGHT+IEXgCsIh/64U5XBT3Ggin5b9DRqNRMVJT5NYcMgbTRn5jT5d6rScDPk4qTr39w5I6jXScB6AA==
X-Received: by 2002:a05:620a:2697:b0:7b7:28c:dcd9 with SMTP id af79cd13be357-7b9ba79b4f5mr7020443485a.29.1735885094766;
        Thu, 02 Jan 2025 22:18:14 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4a09:b0:6d8:aa9e:3e08 with SMTP id
 6a1803df08f44-6dd15499950ls42746746d6.2.-pod-prod-08-us; Thu, 02 Jan 2025
 22:18:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXOv1NVkVnBeIXlHF9Hfz1Kxpl19PFXN+DeXPaySEqjvvpUK/Q4pQ3neiyrWUv1tEEC04bypmV33FTQyg==@gapps.redhat.com
X-Received: by 2002:a05:620a:1aa9:b0:7b6:dc0b:8ffe with SMTP id af79cd13be357-7b9ba80597fmr6868880885a.53.1735885093398;
        Thu, 02 Jan 2025 22:18:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735885093; cv=none;
        d=google.com; s=arc-20240605;
        b=f5uiD3VRwaD8IOfhDHaF/fYl+XBxizglK+gbwV1WqvpxL6ElLsFEDj37n7d+etez2S
         dkdsYrNYYjGzVYM9QiiHR0GPnWJCWjWHgqaJQG2Q30aqKhySzVZlgJMq0HMVWQ1JlWwQ
         jeUdw85pR31OFSWchvF42e+fZhsKCwfMYfXLFgrJDPkEysw+onCBH00PI9o8Us3I80PZ
         GExUNI1Ld25k/EEDP0rn5TTo7NeO953n/VlOFzj0njUC8+/xFDKiKut8JG9GP2Xg3uWU
         vlwHbwaKjSLh9HWltJJmYB+6k8oDdFOubIKN4nRuRUCigxTaTbK+/9+dEq0Bd/6u1tF3
         jceg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=wt4JBbRr6Iyd7z9I4aw1rOIav3GNwPxFshSqYTJB+BY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=fL5bv0aOI0c3/Y4cXmZXmp6PXrv9NHex8+JJ7EAKMrLZtim2SJ/z5kMOWu7yKdL5YW
         kxk+RYx+0QdYDdrP3DZ62EYopjRGwfJ6B9QEs5cFEM03KH8BX/s5tNNtDLLQhp3Aw7DC
         D4WgUSIRFyR2QSyKntNKfpqqjBc4g/qSsGBPdxSuh2TG/W4vBFXLHAbI+4nuqmjLrqNx
         WlVX4Dk9SuDAuPyJ2yauWc8jWiuMaz1A6uvUiWoAFCsMF5/duR03HRSHGmqitEBBM2n3
         F/F7R7jzZ/Z8krlMQRNl35WQES9S8dmgNUyN6LvhJdRy34PtVHx/OiXUAdIHLm8lIEw0
         I8HA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebbffefsi345648501cf.469.2025.01.02.22.18.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 22:18:13 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-616--QVa0GipMsmO51LDtvZKdg-1; Fri,
 03 Jan 2025 01:18:11 -0500
X-MC-Unique: -QVa0GipMsmO51LDtvZKdg-1
X-Mimecast-MFC-AGG-ID: -QVa0GipMsmO51LDtvZKdg
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D2CF419560A5
	for <blinux-list@gapps.redhat.com>; Fri,  3 Jan 2025 06:18:10 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AEA04195394B; Fri,  3 Jan 2025 06:18:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AC37A19560A2
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 06:18:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1DCDA19560A2
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 06:18:10 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-288-ZWvG6WekPGSWG5Xiw-ldbg-1;
 Fri, 03 Jan 2025 01:18:07 -0500
X-MC-Unique: ZWvG6WekPGSWG5Xiw-ldbg-1
X-Mimecast-MFC-AGG-ID: ZWvG6WekPGSWG5Xiw-ldbg
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 17C8E40508
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 01:18:07 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id D5025100BD7; Fri,  3 Jan 2025 01:18:06 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id D34DF100090
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 01:18:06 -0500 (EST)
Date: Fri, 3 Jan 2025 01:18:06 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: quick cookie jar question?
Message-ID: <Pine.LNX.4.64.2501030115090.1232740@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: ojm0oKUkKkDBkwwVAIRerv-VyvwPeeLyGDDc0SvtBJc_1735885087
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: BqKMUb5kuNhRjwGC8nUoRFhZbgLPpAvv-7dgJvxL-4o_1735885090
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

Hi all,
can anyone confirm that the same key  k brings up the cookie jar in links 
as in a chain, that it does in elinks?
Have not needed to do this often, but amazon.com has me motivated..why 
they removed the/access door I cannot imagine.
Thanks,
Karen


