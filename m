Return-Path: <blinux-list+bncBDGI3AUYYYCBBD4Q6G6AMGQE2KF53GQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E40A23911
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 04:48:34 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6dfa69e6983sf21969386d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 19:48:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738295312; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ci2yFabhxpOtbh8LQVFt7X2I5n0iVkxRk+bgZXodOnC7Agg1I6PjdxiLkeQsumjnFk
         exZGios6jsETVw2uyk1ZcNkeWJVRG/j++v8ZBRflDkzWZUV7uGViTvBnWEfNv/2+kEYa
         3D4YqdMVgyFfLrFz0amhFHlvR2MeDECs9cbf1i8G2ESGDj9qrYYT6tzfZV7zLpgB/3oU
         GRgXHs5GLlEA3ySUpRNovZvpNPbtcdridzwPdOFsAP2UMPwOmcVwF4ydTdCF0swzlcbS
         qnbptt1UMqqIVHexNMO4aW8sCUmINgOJKN+SGPdjpb1sJMqTOox+AEodnOtpBkJHdtJ1
         g//g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=FYEFvzqZMcWGRdsslV0SUd1z58ao0OU8HxEIesiuvxc=;
        fh=NT9sO5jIkiflom9bTQj/eO9D6+MiwDwWpNz8wcge9t0=;
        b=hDXQS8t5v9KSyO+1yxH6chMdSAiH8NGIkV9CiLAEIno0SLuAj2vOybbAo00cgNfAYJ
         v2Kf1l/gjTyAlfp7CUOqU8d7wtL+zP1Dg0n5mgOP0bcN+bUNtvK7QdYhp+2DYSliy/28
         9K4vK5xl4Zgj7VRgOIzLeiTpx8at/3blsRnVLLdVYwb9FbXOzn7VfVovb0LbiWV3C5pD
         1V6e3bt0yDZfnAL0WGqykx+AKowOaQPw055Blp8LMLUpl93P0HKGYrIh7aWWYZ97lNlt
         8uZi6R6NCXUWmex2sVBuGD86ml3/dGTt1DZFzHsMUO9KAa//YNKkQYgmw/NgDq0iXhwS
         MK1g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738295312; x=1738900112;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYEFvzqZMcWGRdsslV0SUd1z58ao0OU8HxEIesiuvxc=;
        b=blAI5nv8zpLbXJPuTb9wXS0RMKLpiSX0NsgPh4QryoC3jmC5/9r9o8kazw7gGr59Nh
         Qox/8Y/riYIWAqjnSWWvV1TlQrlUSajES6RSfQwaZlIGNjfs7L62Q1h+o2Dq9jT4ghxx
         2vPIRkj4sF0/118+Fh2u7zhgdl/3puH0lROJVQY+vtlTtV4xw81i1QWt1in6QpZmwNwR
         +jQbH//gvyCs6QALzRl7s8avYw4LZTX45fFL8wSmXWoI3iLiGlDblSscjLmfGFSQIwyE
         QqHS95V19/RfUDJlDQq1phx2OpuF9PAOc9og8b2aUznXKl7nD9PewjaO8XyJeCnjzTvR
         EbNQ==
X-Forwarded-Encrypted: i=2; AJvYcCXYrpMFpTzpvTTHX/pC6DD77oUGQ6FXcZM8vbXVbTjf0tCAF5x+4Ia54Usml86FkMQZzPvDKg==@lfdr.de
X-Gm-Message-State: AOJu0YygZX+51s2KU+owRHTdg3ih7BifEeXoOCTCnjw9zrrA3vDHd9VE
	5fPBwKpDb3bplVCLVeVZoBP3THox0J6sekQEOvzNtNA4lF8caU4g2p+/EWYDSRg=
X-Google-Smtp-Source: AGHT+IGOHsk1Jxdq967Jw+zK5SlOdQ1Vr0PDLyfzQMZd4Sy1x1jQJtsqYczZzxx5C8XJJ19wTp65PA==
X-Received: by 2002:a05:6214:c88:b0:6d8:8b9d:1500 with SMTP id 6a1803df08f44-6e243c647edmr192008736d6.36.1738295312235;
        Thu, 30 Jan 2025 19:48:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2e48:b0:6d8:89a6:8447 with SMTP id
 6a1803df08f44-6e253e3d45fls7736736d6.0.-pod-prod-02-us; Thu, 30 Jan 2025
 19:48:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVx7QClk/tkHn2FQlzdTO0jzyl/eZcIYyTzeghtOTDkkc+UJ5HC1AFeXvbXZsX18EXUo8Cnte/NwIw7aA==@gapps.redhat.com
X-Received: by 2002:a05:620a:44d6:b0:7b9:a387:3d03 with SMTP id af79cd13be357-7bffcda57f3mr1366539185a.39.1738295311436;
        Thu, 30 Jan 2025 19:48:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738295311; cv=none;
        d=google.com; s=arc-20240605;
        b=SBMS7yhSMAgeERZrIUyF9bs+ppb9850ptK4f1WVVZoshLNFuItggqK7w3fcYahm0BW
         6W4ApQP2xe6SdWtYAx9mseZniKgLfusX2gd6/GN29oACUXnpl3xwBJw/7nPpDXLU+82U
         LFSx6Wji0ekIRtn4D3W4N+ynoRm8Mk6kGtDB4uyJdHOFdxJPZa2G8Dc+qBLWAtwErCTU
         R+xB14fuUZeKav7i6CVVl7+kSJSBw+gibIGuJfrPt0hV4VtlCbRW3Xpa5wZhiL/w8bvr
         QzwcK7xFxs0cV2ccUun7yturDIbdzS1QqvG7a5YYmljlszTBV6j4qKxWXrdobzvAb6OH
         DT8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=dPopyUCqA7fuc86ofZgBsscQACd8SRsNqe6FYZfnMh8=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kRRUB+XXolpqCiQ9kBue/NIIWnnwsYvZ50uOjIH40e50Kvv0CA7Vlfved+Gu0/Z5p8
         e/siG8SjJIVScBruzsTCbLqVhpM0FsVBmdgG2elUqUvU2JuKaBMQQ5IdvUWV/EcHEGjG
         1FbLbs6uKpqaGUOv5cg/ps68DO0g+N/yu1WdBvnvjNWpd6UbRJTVOpTRRhrY3N3GcurL
         RIJMxULvlgTKvrlcF7QIRvkV4V1nIFmmfGJZp6Wyyaez2f32nuBBg7iDAAGyqIH4dks8
         4R7viY13bXP3rdzunk9mvPRiTKcICp49F3D8X1mJBSY/O2uok+fHKS+bpbUt7ODH1aVT
         YB0A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a90e646si335602585a.434.2025.01.30.19.48.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 19:48:31 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-100-TuGtBRwkPYCIiGCeTkGJag-1; Thu,
 30 Jan 2025 22:48:28 -0500
X-MC-Unique: TuGtBRwkPYCIiGCeTkGJag-1
X-Mimecast-MFC-AGG-ID: TuGtBRwkPYCIiGCeTkGJag
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 52BEC1800360
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 03:48:25 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4D709195E3DE; Fri, 31 Jan 2025 03:48:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B1E11956094
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 03:48:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B39C71800360
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 03:48:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-613-qDHVHEz4OEaJ6zBYYIHS0g-1; Thu,
 30 Jan 2025 22:48:22 -0500
X-MC-Unique: qDHVHEz4OEaJ6zBYYIHS0g-1
X-Mimecast-MFC-AGG-ID: qDHVHEz4OEaJ6zBYYIHS0g
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Ykhgn62xJz4FHb
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 22:48:21 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4Ykhgn5mYDzfYm; Thu, 30 Jan 2025 22:48:21 -0500 (EST)
Date: Thu, 30 Jan 2025 22:48:21 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: more gui obfuscation
Message-ID: <Z5xIBQ5itO0f071J@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 3-ADxbBzCiuhfQzWqOamHTgDoZ0aCnHwnXltvA4-zfM_1738295302
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: I92RTezbpl_wIa97WCJDTcEFlqLSIJxR42XXJPAHMG0_1738295305
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


I've managed to get to the Orca preference dialogue and can even arrow down to the laptop/desktop preference selections.
My problem comes when the instructions advise me to "press the apply button."

Where is the apply button?
I've never heard of this button. Furthermore a search of keydump output fails to find it.
So at this point I'm stymied unless the wisdom of this group can help.


Getting there,  one millimeter at a time.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

