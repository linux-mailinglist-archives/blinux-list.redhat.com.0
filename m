Return-Path: <blinux-list+bncBDYPVTOXSQEBBYXLTSYAMGQEJGM7L4Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C673892641
	for <lists+blinux-list@lfdr.de>; Fri, 29 Mar 2024 22:43:00 +0100 (CET)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5a4ddcf6b6asf1744523eaf.2
        for <lists+blinux-list@lfdr.de>; Fri, 29 Mar 2024 14:42:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711748579; cv=pass;
        d=google.com; s=arc-20160816;
        b=gzt9UD7Xg7I+9fuQ4rLiMKCVyvoBp4YvDDDo1AWOUOljSk6chJs8hdmFDiKaZNnIHb
         rYJsyGfhJJ3pkns+vURiTBkyMuUBCezlJsPBEhFuh9MmRjgCZ2OOume30JcBmTVa+EgB
         HOj9H8101KLi57oBRXeXMddl+bayUPpheHOjsMi3+gQhyZDK5TTj6nEaTXgnUeM5mzZg
         EEAT2JWlGT0fl0SXEPFrWxc/gFXlfWoYLb1OlGDbXSZwEixbvB4yNoGoQ60zuFavTphO
         x7JIaRYgsVzkkbuw0/kIBe2qy6BUNvPdu0YwadAp7Eq53HUuRSja+IjP+rnbO3Db/j0F
         YJxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=KvQOOhINCXutscWyn6qfHS6iNnbyLO9H9be/feygKxI=;
        fh=9oqRQFSJ+CM8BTVoA20a5YycmGslLSGxscnTeClV+aQ=;
        b=Fms1jBN2CUwfkTKZeL3QOKxsTZYcMvrhq2tAd+JDsYxzFzRoG9qrrYmwpUKKAhopsT
         yFGJd+vGjR11A7RKiZdHKCnLOZtXHxdemc0+drDUnS1XxZDoztSdKqN4ri2QbyQNJAdy
         BcfTALuTC12BSdtiENJeSiU2aWpU7nfbXYG8jSTKswAN4AcnzLz853XQRbVT9acR3XZ+
         PlNULLM7+VjFZechBcRMofTUARo5V1ZmC+SGhTSoKMvt0e08TnWNf27qqx4jZhr6Y+OP
         ci2EqvAnCBz1GxE/2z7+310feNZjeRy0OVn3nfNXUmUwXrmeoG5XV8bZEfAbFsHfl0SN
         j38A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711748578; x=1712353378;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KvQOOhINCXutscWyn6qfHS6iNnbyLO9H9be/feygKxI=;
        b=rgzbm+N9xWSAYEg4unfO7uFyIp8Cdiyd+JFY1adG2OoBoqI4fssdVkxYasXcGdUKQh
         HUfTIPifvO6KWlXdxw/vDl1Bi/OJqBJpyqk3cLj7jKQUPxbQlRlN7NkQb+j/wIBzTCGc
         izW2YvXuVU1tQ0Rfll2Sk4CUYASkSebfDzMf5UdymeVlkjywPU7+Uk3YNVoZipeLTuNQ
         iErqzzmEcBxOU5vDK7/+QX9kUs7N/2tz0Od+KbIclV5mZxA4gT3+IgVwcc+6kFaDjIU9
         u7Xmd5FAqK3oEHU/8AOESdH1P02Jhu2jfPhu0Xft40hTpEUL0/VB3ppjEAueh+sQ5ypA
         hQcg==
X-Forwarded-Encrypted: i=2; AJvYcCWqx1nCQC3IJaJvRWj5+qWfIf48eUOUU6nuoRCaWpSt5LToFb4hWvSQzueKOA3D8NfmfeEzVoZXSCV1QJEF+n/wRYJoHyWfdiwq
X-Gm-Message-State: AOJu0YxILZvlZjTB7n7nVnsz/bNlJlSp2sh8Fkigry3aMlQUVG8OxDsC
	9kZnBfU3B4ECW4Kitw96Obu5aiGkYa2Z1H1BFC6pG5PfP19DP9SiGgY75qdHfrM=
X-Google-Smtp-Source: AGHT+IGvvoIFyOSVJ8LxruPBRdNGUlJWV/uTBsDt1VM9A6kHSufG6kcSMPY4hrnN+59QXk2jp+tJlg==
X-Received: by 2002:a05:6871:58a6:b0:22b:a8f3:36b7 with SMTP id ok38-20020a05687158a600b0022ba8f336b7mr3284351oac.55.1711748578661;
        Fri, 29 Mar 2024 14:42:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:75c9:b0:22a:33ae:1107 with SMTP id
 de9-20020a05687075c900b0022a33ae1107ls645481oab.1.-pod-prod-07-us; Fri, 29
 Mar 2024 14:42:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWx/7Iuo/06FwOQU4UZwIzlm/00PDKXyecSPHrixz/1/jesP5LMX/cIXhtiK/t9pxgQmRpO+F0Y2QTzhpeIoqnutR8N+KLcwgRFZ4io
X-Received: by 2002:a05:6808:398c:b0:3c3:d4a6:30c4 with SMTP id gq12-20020a056808398c00b003c3d4a630c4mr4580275oib.1.1711748577750;
        Fri, 29 Mar 2024 14:42:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711748577; cv=none;
        d=google.com; s=arc-20160816;
        b=V0ITWIt8Ki2g/xtRshsLwjKi/J5ME97PfPMZZiK5g/dLtCYItREYKlPJGO1cPMhI/S
         CONE5cSuolAfgTORd/PvSToIjdUFXrlEIiuLKiLJj2ikO5SoJAMd2mEKCCO3W7HnZ8s1
         W/HMRfce0iNq2ah/Uipmqg0o6XqketOH+YaNRjpZP5K9zU0rJbIKOla8oT/bv2ZIUj6o
         ZQ4NQ0NM8xd5tUN3+HueacrnI1RNwhssscW1iXq6N4TODNlp04qztpG81GfW2oIG+Q96
         v4XnRMQ6u84WNO10LDlhsOmeKxX52d60CAsReIUdSJaEeHCI6teou4diA77YY9wcJWxm
         E5fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=lW9KAALwL1SHbHmD4wDUimQHykLKSZB8mJrjAcTYAz4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=i6G+I3FIZl8I1g08wcdOIVgmf5ME8uFWQxOlPcW+F3JH5MkFgcJRxvBgwhPd7TTnvT
         QvkQ1+1Prjv0zM2FyCJgu7PS14Md9dwSY3sRqciRjWZJ3fsiwPesUE2Lyc0qu2ohcc2T
         VD28V2wYlh7fdzTu6vd2/jw27Jz4MJUktbj8LH7NvhVlwi+RJJLV/ILRWCPvqLFgeO3V
         DlFlQqpxWQDpmqi3YvZ2pKSwJc/SIvubqSLOla3AnoefXveqyj3llxDGU4S1rgjiOXFo
         3mI8L/wo4/8ivdyJDKwJCYjon/h7r3/yqTiTqE7TwMSodM8j6oOQu87+3HKmEiFFXEhP
         gBCw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u16-20020ac858d0000000b004313fb72cd0si4471458qta.354.2024.03.29.14.42.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 14:42:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-695-8MS79dz3OKW5CRV6TD4aYw-1; Fri, 29 Mar 2024 17:42:56 -0400
X-MC-Unique: 8MS79dz3OKW5CRV6TD4aYw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0BA6F85A58C
	for <blinux-list@gapps.redhat.com>; Fri, 29 Mar 2024 21:42:56 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0867040C6CB4; Fri, 29 Mar 2024 21:42:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C358640C6CB1
	for <blinux-list@redhat.com>; Fri, 29 Mar 2024 21:42:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A01629AC005
	for <blinux-list@redhat.com>; Fri, 29 Mar 2024 21:42:55 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-520-vQXzBNNUPQaLBG4ibpYPNg-1; Fri,
 29 Mar 2024 17:42:53 -0400
X-MC-Unique: vQXzBNNUPQaLBG4ibpYPNg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V5v5m5SVjz1740
	for <blinux-list@redhat.com>; Fri, 29 Mar 2024 17:42:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V5v5m52nHzcbc; Fri, 29 Mar 2024 17:42:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V5v5m4zTrzcbC
	for <blinux-list@redhat.com>; Fri, 29 Mar 2024 17:42:52 -0400 (EDT)
Date: Fri, 29 Mar 2024 17:42:52 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: getjenux.sh script needs help
Message-ID: <12dcd2a2-bb2c-8f7b-04bc-ada4d107f077@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

#!/usr/bin/env bash
# file: getjenux.sh - get jenux script
wget -bc -o jenux.log https://nashcentral.duckdns.org/projects/Jenux-2024.03.21-tripple.iso.sha512 &&
UPDATE='grep -ic error jenux.log'
if [ $UPDATE -gt 0]; then
echo "jenux likely had an update."
fi
wget -bc -a jenux.log https://nashcentral.duckdns.org/projects/Jenux-2024.03.26-tripple.iso
cut here.
As the script is now,
$UPDATE will increment each time ERROR is found in jenux.log.
What is not happening is the error message isn't appearing on the terminal
and the script doesn't exit yet.
If I can get this script working correctly it may be generalized to
download other distros.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

